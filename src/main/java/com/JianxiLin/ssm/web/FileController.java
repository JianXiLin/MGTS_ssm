package com.JianxiLin.ssm.web;

import com.JianxiLin.ssm.provider.UCloudProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
public class FileController {
    @Autowired
    private UCloudProvider uCloudProvider;

    @ResponseBody
    @RequestMapping(value = "/file/upload",method = RequestMethod.POST)
    public String upload(HttpServletRequest request){

        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        MultipartFile imagefile = multipartRequest.getFile("imageFile");

        String imageUrl = "";
        try {
            imageUrl = uCloudProvider.uploadFile(imagefile.getInputStream(), imagefile.getContentType(), imagefile.getOriginalFilename());
        } catch (IOException e) {
            e.printStackTrace();
        }

        return imageUrl;
    }
}
