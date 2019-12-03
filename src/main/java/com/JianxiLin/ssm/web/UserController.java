package com.JianxiLin.ssm.web;

import com.JianxiLin.ssm.dto.WechatAuthStateDTO;
import com.JianxiLin.ssm.dto.WechatUserDTO;
import com.JianxiLin.ssm.entity.User;
import com.JianxiLin.ssm.service.impl.WechatUserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController {


    @Autowired
    private WechatUserServiceImpl wechatUserServiceImpl;
    //用于存储微信授权登录的账号登录状态
    public static WechatAuthStateDTO wechatAuthStateDTO = new WechatAuthStateDTO();
    //用于存储微信授权登录的二维码url
    public static HashMap<String,String> imgUrls = new HashMap<>();

    /**
     *
     * @return
     */
    @RequestMapping(value = "/person/{userId}")
    public String personalData(@PathVariable(value = "userId") String userId,
                               Model model){
        if(userId == null){
            //跳转到首页
            return "redirect:/";
        }

        //添加参数到请求中，可在jsp页面中使用${参数}获取值
        model.addAttribute("参数","这是添加到请求里的参数");
        //跳转到个人页面
        return "personalPage";
    }



    /** =====微信授权登录功能=======
     * 页面获取wechat登录的二维码(含一唯一标识数字)信息
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/getWechatLogin",method = RequestMethod.GET)
    public HashMap<String,String> getWechatLogin(){
        String redirect_url = URLEncoder.encode(wechatUserServiceImpl.getDomain_name_url()+"/user/callback");
        String uuid = UUID.randomUUID().toString();

        StringBuilder url = new StringBuilder();
        url.append("https://open.weixin.qq.com/connect/oauth2/authorize?");
        url.append("appid=").append(wechatUserServiceImpl.getAppid());
        url.append("&redirect_uri=").append(redirect_url)
                .append("?uuid=").append(uuid);
        url.append("&response_type=").append("code");
        url.append("&scope=").append("snsapi_userinfo");
        url.append("&state=").append("1");
        url.append("#wechat_redirect");

        wechatAuthStateDTO.setUuid(uuid);
        wechatAuthStateDTO.setAuth(false);
        wechatAuthStateDTO.setErrcode(0);

        imgUrls.put(uuid,url.toString());

        HashMap<String,String> hashMap = new HashMap<>();
        hashMap.put("wechatUrl",url.toString());
        hashMap.put("uuid",uuid);

        return hashMap;
    }

    /**=====微信授权登录功能=======
     * 跳转到微信登录页面
     * @return
     */
    @RequestMapping(value = "/toWeChatPage",method = RequestMethod.GET)
    public String toWeChatPage(@RequestParam(name = "uuid") String uuid,
                               Model model){
        String url = "";
        if(imgUrls.size()>0 && imgUrls.containsKey(uuid)){
            url = imgUrls.get(uuid);
        }
        model.addAttribute("wechatUrl",url);
        model.addAttribute("uuid",uuid);
        return "wechatLogin";
    }


    /** =====微信授权登录功能=======
     * 手机端 扫描二维码 返回的请求
     * @param code
     * @param state
     * @param uuid
     * @param request
     * @return
     */
    @RequestMapping(value = "/callback", method = RequestMethod.GET)
    public String callback(@RequestParam(name = "code") String code,
                           @RequestParam(name = "state") String state,
                           @RequestParam(name = "uuid") String uuid,
                           HttpServletRequest request,
                           HttpServletResponse response
    ) {
        WechatUserDTO wechatUserDTO = wechatUserServiceImpl.getWechatUserDTO(code, state);

        if(uuid != null && uuid != ""){
            if (uuid.equals(wechatAuthStateDTO.getUuid())){
                //登录成功
                String token = UUID.randomUUID().toString();
                wechatAuthStateDTO.setErrcode(0);
                wechatAuthStateDTO.setAuth(true);
                wechatAuthStateDTO.setWechatUserDTO(wechatUserDTO);
                wechatAuthStateDTO.setToken(token);
                /*用户信息*/
                request.setAttribute("nickName",wechatUserDTO.getNickname());
                request.setAttribute("headimgurl",wechatUserDTO.getHeadimgurl());


                User user = new User();
                user.setAccountId(wechatUserDTO.getOpenid());
                user.setName(wechatUserDTO.getNickname());
                user.setSex(wechatUserDTO.getSex());
                user.setCity(wechatUserDTO.getCity());
                user.setProvince(wechatUserDTO.getProvince());
                user.setCountry(wechatUserDTO.getCountry());
                user.setAvaterUrl(wechatUserDTO.getHeadimgurl());
                user.setToken(token);
                wechatUserServiceImpl.createOrUpdateWechatUser(user);


            }else{
                //登录失败
                System.out.println(code);
            }
        }
        return "test";
    }



    /** =====微信授权登录功能=======
     * 获取二维码 登录状态（用于响应前端ajax轮询）
     * @return
     */
    @RequestMapping(value = "/WechatAuthState",method = RequestMethod.POST)
    @ResponseBody
    public WechatAuthStateDTO WechatAuthState(HttpServletResponse response){
        return wechatAuthStateDTO;
    }

    /** =====微信授权登录功能=======
     * 退出登录
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public void logout(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        wechatAuthStateDTO = new WechatAuthStateDTO();
    }

}
