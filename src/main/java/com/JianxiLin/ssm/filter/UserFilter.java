package com.JianxiLin.ssm.filter;

import com.JianxiLin.ssm.dao.UserDao;
import com.JianxiLin.ssm.entity.User;
import com.JianxiLin.ssm.util.SpringUtils;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
@Component
public class UserFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    /**
     * 过滤器 （请求前判断用户是否已经登录该浏览器，即cookie中是否存在于用户token相匹配的值）
     * @param servletRequest
     * @param servletResponse
     * @param filterChain
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        //获取cookie内容判断登录
        //获取bean
        UserDao userDao = (UserDao) SpringUtils.getBean("userDao");

        //测试账号
        User user = userDao.selUserByToken("a");
        if(user!=null){
            request.getSession().setAttribute("user",user);
        }

//        Cookie[] cookies = request.getCookies();
//        if(null != cookies)
//            for(Cookie cookie:cookies){
//                if(cookie.getName().equals("token")){
//                    String token = cookie.getValue();
//                    User user = userDao.selUserByToken(token);
//                    if(user!=null){
//                        request.getSession().setAttribute("user",user);
//                    }
//                    break;
//                }
//            }
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
