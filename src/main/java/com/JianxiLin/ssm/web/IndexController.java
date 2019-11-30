package com.JianxiLin.ssm.web;

import com.JianxiLin.ssm.entity.Goods;
import com.JianxiLin.ssm.service.impl.GoodsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller

public class IndexController {
    @Autowired
    private GoodsServiceImpl goodsService;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(Model model) {
        //初始显示热门物品
        List<Goods> hotGoods = goodsService.getHotGoods();
        model.addAttribute("hotGoods",hotGoods);
        return "index";
    }

}
