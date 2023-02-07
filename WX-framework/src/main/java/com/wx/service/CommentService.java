package com.wx.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.wx.domain.ResponseResult;
import com.wx.domain.entity.Comment;


//评论表(Comment)表服务接口

public interface CommentService extends IService<Comment> {

    ResponseResult commentList(String commentType, Long articleId, Integer pageNum, Integer pageSize);

    ResponseResult addComment(Comment comment);
}

