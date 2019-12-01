package com.JianxiLin.ssm.web;

import com.JianxiLin.ssm.dto.GoodsPageDTO;
import com.JianxiLin.ssm.dto.GoodsWithUserDTO;
import com.JianxiLin.ssm.dto.PendingGoodsDTO;
import com.JianxiLin.ssm.service.impl.GoodsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private GoodsServiceImpl goodsService;

    /** ======= 物品详情 =======
     * 处理获取物品详情页面的请求
     * @param goodsId 物品id
     * @param model
     * @return
     */
    @RequestMapping("/{goodsId}")
    public String getGoodsPage(@PathVariable("goodsId") Integer goodsId,
                               Model model){
        GoodsWithUserDTO goodsWithUser = goodsService.getGoodsWithUserById(goodsId);
        model.addAttribute("goodsWithUser",goodsWithUser);
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

    /**
     * 获取挂起物品页面
     * @return
     */
    @RequestMapping(value = "/pending",method = RequestMethod.GET)
    public String getPendingGoodsPage(){

        return "pendingGoods";
    }

    /***
     *  处理挂起物品的表单post请求
     * @param pendingGoodsDTO 从前端jsp中获取的物品信息。
     *                        表单的name值与PandingGoodsDTO属性名相对应
     * @return
     */
    @RequestMapping(value = "/pending",method = RequestMethod.POST)
    public String pendingGoods(PendingGoodsDTO pendingGoodsDTO){
        System.out.println(pendingGoodsDTO.toString());
        if(pendingGoodsDTO.getGoodsPicture() == null || pendingGoodsDTO.getGoodsPicture().equals("")){
            pendingGoodsDTO.setGoodsPicture("https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png");
        }
        Integer goodsTypeId = goodsService.pendingOrUpdGoods(pendingGoodsDTO);

        return "redirect:page/"+goodsTypeId;
    }

    /***
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


}
