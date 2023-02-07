package com.wx.service;

import com.wx.domain.ResponseResult;
import com.wx.domain.entity.User;

public interface BlogLoginService {
    ResponseResult login(User user);


    ResponseResult logout();
}
