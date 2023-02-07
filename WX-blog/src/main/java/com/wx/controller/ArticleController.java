package com.wx.controller;

import com.wx.domain.ResponseResult;
import com.wx.domain.entity.Article;
import com.wx.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

//文章
@RestController//是@Controller和@ResponseBody的合集,表示这是个控制器 bean,并且是将函数的返回值直接填入 HTTP 响应体中,是 REST 风格的控制器,返回JSON或XML形式数据
@RequestMapping("/article")//设置访问路径
public class ArticleController {
    @Autowired//JavaBean注解，使方法在执行的时候实现byType自动装配
    private ArticleService articleService;
  /*  @GetMapping("/list")
    public List<Article> test(){
        return articleService.list();
    }*/
  @GetMapping("/hotArticleList")
  public ResponseResult hotArticleList(){
     //查询热门文章 封装成ResponseResult返回
      ResponseResult result =  articleService.hotArticleList();
      return result;
  }

  @GetMapping("/articleList")
  public ResponseResult articleList(Integer pageNum,Integer pageSize,Long categoryId){
     return articleService.articleList(pageNum,pageSize,categoryId);
  }

    @GetMapping("/{id}")
    public ResponseResult getArticleDetail(@PathVariable("id") Long id){
        return articleService.getArticleDetail(id);
    }

}
