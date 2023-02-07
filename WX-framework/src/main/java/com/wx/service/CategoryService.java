package com.wx.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.wx.domain.ResponseResult;
import com.wx.domain.entity.Category;


//分类表(Category)表服务接口

public interface CategoryService extends IService<Category> {

    ResponseResult getCategoryList();
}

