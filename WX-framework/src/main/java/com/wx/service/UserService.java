package com.wx.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.wx.domain.ResponseResult;
import com.wx.domain.entity.User;


//用户表(User)表服务接口

public interface UserService extends IService<User> {

    ResponseResult userInfo();

    ResponseResult updateUserInfo(User user);

    ResponseResult register(User user);
}

