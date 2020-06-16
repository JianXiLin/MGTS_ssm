package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.Chat;
import com.JianxiLin.ssm.entity.Goods;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class GoodsTest {
    @Autowired
    private GoodsDao goodsDao;
    @Autowired
    private HistoryDao historyDao;


    @Test
    public void testSelGoodsNumByType() {

        Integer num = goodsDao.selGoodsNumByType(1);

        System.out.println(num);

    }

    @Test
    public void testSelGoodsByType(){
        System.out.println("data---------------------------------------------");
        List<Goods> goodsList = goodsDao.selGoodsByType(1, 1, 1);
        for (Goods g:goodsList) {
            System.out.println(g.toString());
        }
    }

    @Test
    public void testSelChatHistory(){
        List<Chat> chats = historyDao.selChatsByGoodsId(3);
        for (Chat c:chats) {
            System.out.println(c.toString());

        }
    }


    @Test
    public void demo (){

//        File files = new File("E:\\图片");
//        for (File file:files.listFiles()){
//            try {
//                InputStream in = new FileInputStream(file);
//                String contentType = new MimetypesFileTypeMap().getContentType(file);
//                String name = file.getName();
//                String goodsId = name.split("\\.")[0];
//
//                String url = uploadFile(in, contentType, name);
//                goodsDao.updImgByGoodsId(new Integer(goodsId),url);
//
//            } catch (FileNotFoundException e) {
//                e.printStackTrace();
//            }
//        }

    }

//    public String uploadFile(InputStream fileStream,String mimeType,String fileName){
//        // 对象相关API的授权器
//        ObjectAuthorization objectAuthorization = new UfileObjectLocalAuthorization(
//                "TOKEN_152b173f-2e65-4002-9331-20faf78469d2", "00d739e0-9178-433b-9026-85460950e659");
//        // 对象操作需要ObjectConfig来配置您的地区和域名后缀
//        ObjectConfig config = new ObjectConfig("cn-bj", "ufileos.com");
//
//        //文件名称
//        String generatedFileName = "";
//        String[] filePaths = fileName.split("\\.");
//        if (filePaths.length > 1){
//            generatedFileName = UUID.randomUUID().toString()+"."+filePaths[filePaths.length-1];
//        }else {
//            return "error";
//        }
//        //同步上传文件
//        try {
//            PutObjectResultBean response = UfileClient.object(objectAuthorization, config)
//                    .putObject(fileStream, mimeType)
//                    .nameAs(generatedFileName)
//                    .toBucket("jianxilin")
//                    /**
//                     * 是否上传校验MD5, Default = true
//                     */
//                    //  .withVerifyMd5(false)
//                    /**
//                     * 指定progress callback的间隔, Default = 每秒回调
//                     */
//                    //  .withProgressConfig(ProgressConfig.callbackWithPercent(10))
//                    /**
//                     * 配置进度监听
//                     */
//                    .setOnProgressListener(new OnProgressListener() {
//                        @Override
//                        public void onProgress(long bytesWritten, long contentLength) {
//
//                        }
//                    })
//                    .execute();
//            //上传图片成功
//            if(response !=null && response.getRetCode() == 0){
//                String url = UfileClient.object(objectAuthorization, config)
//                        .getDownloadUrlFromPrivateBucket(generatedFileName, "jianxilin", 24 * 60 * 60 * 365)
//                        .createUrl();
//                return  url;
//            }else{
//                return "error";
//            }
//        } catch (UfileClientException e) {
//            e.printStackTrace();
//            return null;
//        } catch (UfileServerException e) {
//            e.printStackTrace();
//            return  null;
//        }
//
//    }

}
