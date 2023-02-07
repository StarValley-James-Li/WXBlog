package com.wx.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.wx.domain.ResponseResult;
import com.wx.domain.entity.Link;


//友链(Link)表服务接口

public interface LinkService extends IService<Link> {

    ResponseResult getAllLink();
}

