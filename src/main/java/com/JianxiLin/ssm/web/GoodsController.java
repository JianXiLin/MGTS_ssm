package com.JianxiLin.ssm.web;

import com.JianxiLin.ssm.dto.ChatWithUserDTO;
import com.JianxiLin.ssm.dto.GoodsPageDTO;
import com.JianxiLin.ssm.dto.GoodsWithUserDTO;
import com.JianxiLin.ssm.dto.PendingGoodsDTO;
import com.JianxiLin.ssm.entity.Contact;
import com.JianxiLin.ssm.entity.Goods;
import com.JianxiLin.ssm.entity.MyCollection;
import com.JianxiLin.ssm.entity.User;
import com.JianxiLin.ssm.service.impl.GoodsServiceImpl;
import com.JianxiLin.ssm.service.impl.HistoryServiceImpl;
import com.JianxiLin.ssm.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private GoodsServiceImpl goodsService;
    @Autowired
    private UserServiceImpl userService;
    @Autowired
    private HistoryServiceImpl historyService;

    /** ======= 物品详情 =======
     * 处理获取物品详情页面的请求
     * @param goodsId 物品id
     * @param model
     * @return
     */
    @RequestMapping("/{goodsId}")
    public String getGoodsPage(@PathVariable("goodsId") Integer goodsId,
                               HttpServletRequest request,
                               Model model){
        GoodsWithUserDTO goodsWithUser = goodsService.getGoodsWithUserById(goodsId);
        Contact contact = userService.getContactByUserId(goodsWithUser.getUser().getId());
        List<ChatWithUserDTO> chatWithUserDTOS = historyService.selChatHistory(goodsId);

        //获取登录账号的信息
        User sessionUser = (User) request.getSession().getAttribute("user");
        MyCollection myCollection = historyService.selCollectionHistory(sessionUser.getId(), goodsId);

        model.addAttribute("goodsWithUser",goodsWithUser);
        model.addAttribute("contact",contact);
        model.addAttribute("chatWithUserDTOS",chatWithUserDTOS);
        if(myCollection!=null){
            model.addAttribute("isHeart",true);
        }else {
            model.addAttribute("isHeart",false);
        }
        return "detailGoods";
    }

    /** ======= 物品分页显示 =======
     * 处理获取分页获取某类型物品信息的请求
     * @param typeId 物品类型id
     * @param page 第几页 （1 ~ *）
     * @param size 每页大小
     * @param model
     * @return
     */
    @RequestMapping(value = "/page/{type}",method = RequestMethod.GET)
    public String showGoodsByType(@PathVariable("type") Integer typeId,
                                  @RequestParam(value = "page",defaultValue = "1") Integer page,
                                  @RequestParam(value = "size",defaultValue = "12") Integer size,
                                  Model model){
        if(typeId < 0 || typeId == null )
            return "redirect:/";

        //根据物品类型进行分页获取物品信息
        GoodsPageDTO goodsPageDTO = goodsService.getGoodsByType(typeId,page-1,size);
        List<GoodsWithUserDTO> goodsWithUserDTOList = (List<GoodsWithUserDTO>) goodsPageDTO.getShowGoodsList();


        model.addAttribute("goodsWithUserDTOList", goodsWithUserDTOList);
        model.addAttribute("goodsPageDTO",goodsPageDTO);
        return "goodsByType";
    }

    /** ======= 挂起物品 =======
     * 获取挂起物品页面
     * @return
     */
    @RequestMapping(value = "/pending",method = RequestMethod.GET)
    public String getPendingGoodsPage(Model model,
                                      HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        if(!userService.isHaveContact(user.getId())){
            model.addAttribute("error","请完善您的个人信息(至少需要一个联系方式)");
        }
        return "pendingGoods";
    }

    /***  ======= 挂起物品 =======
     *  处理挂起物品的表单post请求
     * @param pendingGoodsDTO 从前端jsp中获取的物品信息。
     *                        表单的name值与PandingGoodsDTO属性名相对应
     * @return
     */
    @RequestMapping(value = "/pending",method = RequestMethod.POST)
    public String pendingGoods(PendingGoodsDTO pendingGoodsDTO,
                               Model model){
        if(pendingGoodsDTO.getGoodsPicture() == null || pendingGoodsDTO.getGoodsPicture().equals("")){
            pendingGoodsDTO.setGoodsPicture("https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png");
        }
        Integer goodsTypeId = goodsService.pendingOrUpdGoods(pendingGoodsDTO);
        //用户没有填写个人联系方式,则无法发布物品
        if(goodsTypeId == -101){
            Goods goods = goodsService.toGoods(pendingGoodsDTO);
            model.addAttribute("goods",goods);

            return "pendingGoods";
        }

        return "redirect:page/"+goodsTypeId;
    }

    /***  ======= 修改物品信息 =======
     *  更新物品信息-- 向请求添加将修改物品的信息，跳转到挂起物品页面，
     *  在挂起页面实现修改物品信息
     * @param goodsId 物品id
     * @param model
     * @return
     */
    @RequestMapping(value = "/update/{goodsId}",method = RequestMethod.GET)
    public String updateGoods( @PathVariable Integer goodsId,
                               Model model){

        GoodsWithUserDTO goodsWithUserById = goodsService.getGoodsWithUserById(goodsId);
        model.addAttribute("goods",goodsWithUserById.getGoods());
        return "pendingGoods";
    }

    /***
     * 添加物品的评论信息
     * @return
     */
    @RequestMapping(value = "insComment",method = RequestMethod.POST)
    public String insChatHistory(@RequestParam("userId")Integer senderId,
                                 @RequestParam("goodsId")Integer goodsId,
                                 @RequestParam("content")String content){

        boolean state = historyService.insChatHistory(senderId, goodsId, content);

        return "redirect:/goods/"+goodsId;
    }

    @ResponseBody
    @RequestMapping(value = "insCollection",method = RequestMethod.POST)
    public boolean insCollection(@RequestParam("goodsId")Integer goodsId,
                                 HttpServletRequest request){
        //获取登录账号的信息
        User sessionUser = (User) request.getSession().getAttribute("user");

        if (sessionUser == null || goodsId ==null)
            return false;
        historyService.insCollectionHistory(sessionUser.getId(),goodsId);
        return true;
    }

    @ResponseBody
    @RequestMapping(value = "delCollection",method = RequestMethod.POST)
    public boolean delCollection(@RequestParam("goodsId")Integer goodsId,
                                 HttpServletRequest request){
        //获取登录账号的信息
        User sessionUser = (User) request.getSession().getAttribute("user");

        if (sessionUser == null || goodsId ==null)
            return false;
        historyService.delCollectionHistory(sessionUser.getId(),goodsId);
        return true;
    }

}
