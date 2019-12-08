package com.JianxiLin.ssm.web;

import com.JianxiLin.ssm.dto.GoodsWithUserDTO;
import com.JianxiLin.ssm.entity.Collectionperson;
import com.JianxiLin.ssm.entity.Goods;
import com.JianxiLin.ssm.entity.User_info;
import com.JianxiLin.ssm.service.impl.GoodsServiceImpl;
import com.JianxiLin.ssm.service.impl.UserServiceImpl;
import com.JianxiLin.ssm.service.impl.User_InfoServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller

public class IndexController {
    @Autowired
    private GoodsServiceImpl goodsService;
    @Autowired
    private User_InfoServiceImpl user_infoService;
    @Autowired
    private UserServiceImpl userService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(Model model) {
        //初始显示热门物品
        List<GoodsWithUserDTO> hotGoods = goodsService.getHotGoods();
        model.addAttribute("hotGoodsWithUser",hotGoods);
        return "index";
    }



    int id;
    /** ======= 个人信息 =======
     * 处理个人信息页面的请求
     * @return
     */
    @RequestMapping(value = "/personInformation/{userId}",method = RequestMethod.GET)
    public String getPersonInformation(@PathVariable(value = "userId") int userId,
                                       Model model){

        User_info user_info = new User_info();
        User_info user_info2 = new User_info();
        id=userId;
        try{
            user_info=user_infoService.getGoodsWithUserById(userId);
            if(user_info==null){

                user_info2.setUserId(userId);
                System.out.println(user_info2.getUserId());
                user_infoService.creatUser_Info(user_info2);
            }
        }catch (Exception e){

        }


        List<Collectionperson> collectionperson=userService.getCollectionByUserId(userId);
        Map<String,String> map=new HashMap<String, String>();
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
        for(Collectionperson collectionperson2 :collectionperson ){
            for (Goods goods:goodsService.getGoodWithUserById(collectionperson2.getGoodsId())) {
                map.put(goods.getGoodsName(),sd.format(new Date(collectionperson2.getGmtUpdate())));
            }
        }
        System.out.println(map);
        int num=(collectionperson.size()-1)*3;
        System.out.println(num);
        model.addAttribute("user_Info",user_info);
        model.addAttribute("collection",map);
        model.addAttribute("collection_num",num);
        return "personInformation";
    }

    @RequestMapping(value = "/personInformation/change",method = RequestMethod.POST)
    public String setPersonInformation(@RequestParam(value = "wechat") String wechat, @RequestParam(value = "phone") String phone, @RequestParam(value = "qq") String qq){
        User_info user_info = new User_info();
        user_info.setUserId(id);
        user_info.setWechat(wechat);
        user_info.setPhoneNumber(phone);
        user_info.setQq(qq);
        user_infoService.updateUser_Info(user_info);
        return "personInformation";

    }

}
