package com.JianxiLin.ssm.dto;

import java.util.ArrayList;
import java.util.List;

public class GoodsPageDTO {
    private List<?> showGoodsList = null;
    //第一页按钮
    private boolean isShowFirstButton = true;
    //最后一页按钮
    private boolean isShowLastButton = true;
    //上一页按钮
    private boolean isShowPreButton = true;
    //下一页按钮
    private boolean isShowNextButton = true;
    //当前页数
    private Integer page = 0;
    //显示的页数按钮个数
    private int showPageButtonNum = 7;

    private int lastPageNum = 0;
    //显示的页数按钮
    private List<Integer> showPagesList = new ArrayList<>();


    /**
     * 设置分页按钮组 按钮状态
     * @param sum 内容总数（显示的物品总数）
     * @param page 显示第几页 (1~*)
     * @param size 每页显示的内容数量
     */
    public void setShowStates(Integer sum,Integer page, Integer size) {
        if(sum != 0) {
            this.page = page;
            int showButtonStartNum = 0;
            size = size < 1 ? 1 : size;
            size = size > sum ? sum : size;

            lastPageNum = sum%size == 0 ? sum/size : (sum/size)+1;
            page = page < 1 ? 1 : page;
            page = page > lastPageNum ? lastPageNum : page;

            //1 ~ 显示的按钮数/2(1~3) 第一页按钮隐藏
            isShowFirstButton = page <= (showPageButtonNum/2+1) ? false : true;
            //(最后一页-显示的按钮数) ~ 最后一页 (lastPage-3 ~ lastPage) 最后一页按钮隐藏
            isShowLastButton = (page >= (lastPageNum-showPageButtonNum/2) && page <= lastPageNum) ? false : true;
            //第一页 前一页按钮隐藏
            isShowPreButton = page == 1 ? false:true;
            //最后一页 下一页按钮隐藏
            isShowNextButton = page == lastPageNum ? false:true;

            //显示的页数按钮的第一个按钮数字（page=1~显示页数个数/2+1 为1）
            showButtonStartNum = ((page>=1)&&page<=((showPageButtonNum/2)+1))? 1 : (page-(showPageButtonNum/2));

            //设置显示的按钮组数值
            for (int i = 0; i < showPageButtonNum ; i++) {
                showPagesList.add(Integer.valueOf(showButtonStartNum+i));
                if(showButtonStartNum+i == lastPageNum)
                    break;
            }
        }

    }

    public List<?> getShowGoodsList() {
        return showGoodsList;
    }

    public void setShowGoodsList(List<?> showGoodssList) {
        this.showGoodsList = showGoodssList;
    }

    public boolean isShowFirstButton() {
        return isShowFirstButton;
    }

    public void setShowFirstButton(boolean showFirstButton) {
        isShowFirstButton = showFirstButton;
    }

    public boolean isShowLastButton() {
        return isShowLastButton;
    }

    public void setShowLastButton(boolean showLastButton) {
        isShowLastButton = showLastButton;
    }

    public boolean isShowPreButton() {
        return isShowPreButton;
    }

    public void setShowPreButton(boolean showPreButton) {
        isShowPreButton = showPreButton;
    }

    public boolean isShowNextButton() {
        return isShowNextButton;
    }

    public void setShowNextButton(boolean showNextButton) {
        isShowNextButton = showNextButton;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public int getShowPageButtonNum() {
        return showPageButtonNum;
    }

    public void setShowPageButtonNum(int showPageButtonNum) {
        this.showPageButtonNum = showPageButtonNum;
    }

    public int getLastPageNum() {
        return lastPageNum;
    }

    public void setLastPageNum(int lastPageNum) {
        this.lastPageNum = lastPageNum;
    }

    public List<Integer> getShowPagesList() {
        return showPagesList;
    }

    public void setShowPagesList(List<Integer> showPagesList) {
        this.showPagesList = showPagesList;
    }
}
