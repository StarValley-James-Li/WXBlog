package com.wx.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.wx.domain.ResponseResult;
import com.wx.domain.entity.Article;
//文章表（Article）服务接口
public interface ArticleService extends IService<Article> {
    ResponseResult hotArticleList();

    ResponseResult articleList(Integer pageNum, Integer pageSize, Long categoryId);

    ResponseResult getArticleDetail(Long id);
}
