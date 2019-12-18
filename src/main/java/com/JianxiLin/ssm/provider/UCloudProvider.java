package com.JianxiLin.ssm.provider;

import cn.ucloud.ufile.UfileClient;
import cn.ucloud.ufile.api.object.ObjectConfig;
import cn.ucloud.ufile.auth.ObjectAuthorization;
import cn.ucloud.ufile.auth.UfileObjectLocalAuthorization;
import cn.ucloud.ufile.bean.PutObjectResultBean;
import cn.ucloud.ufile.exception.UfileClientException;
import cn.ucloud.ufile.exception.UfileServerException;
import cn.ucloud.ufile.http.OnProgressListener;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.InputStream;
import java.util.UUID;

@Component
public class UCloudProvider {
    @Value("${UCloud.UFile.Public_key}")
    private String publicKey;
    @Value("${UCloud.UFile.Private_key}")
    private String privateKey;

    private String bucketName = "jianxilin";

    public String uploadFile(InputStream fileStream,String mimeType,String fileName){
        // 对象相关API的授权器
        ObjectAuthorization objectAuthorization = new UfileObjectLocalAuthorization(
                publicKey, privateKey);
        // 对象操作需要ObjectConfig来配置您的地区和域名后缀
        ObjectConfig config = new ObjectConfig("cn-bj", "ufileos.com");

        //文件名称
        String generatedFileName = "";
        String[] filePaths = fileName.split("\\.");
        if (filePaths.length > 1){
            generatedFileName = UUID.randomUUID().toString()+"."+filePaths[filePaths.length-1];
        }else {
            return "error";
        }
        //同步上传文件
        try {
            PutObjectResultBean response = UfileClient.object(objectAuthorization, config)
                    .putObject(fileStream, mimeType)
                    .nameAs(generatedFileName)
                    .toBucket(bucketName)
                    /**
                     * 是否上传校验MD5, Default = true
                     */
                    //  .withVerifyMd5(false)
                    /**
                     * 指定progress callback的间隔, Default = 每秒回调
                     */
                    //  .withProgressConfig(ProgressConfig.callbackWithPercent(10))
                    /**
                     * 配置进度监听
                     */
                    .setOnProgressListener(new OnProgressListener() {
                        @Override
                        public void onProgress(long bytesWritten, long contentLength) {

                        }
                    })
                    .execute();
                    //上传图片成功
                    if(response !=null && response.getRetCode() == 0){
                        String url = UfileClient.object(objectAuthorization, config)
                                .getDownloadUrlFromPrivateBucket(generatedFileName, bucketName, 24 * 60 * 60 * 365)
                                .createUrl();
                        return  url;
                    }else{
                        return "error";
                    }
        } catch (UfileClientException e) {
            e.printStackTrace();
            return null;
        } catch (UfileServerException e) {
            e.printStackTrace();
            return  null;
        }

    }
}
