package com.wx.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.wx.constants.SystemConstants;
import com.wx.domain.ResponseResult;
import com.wx.domain.entity.Article;
import com.wx.domain.entity.Category;
import com.wx.domain.vo.ArticleDetailVo;
import com.wx.domain.vo.ArticleListVo;
import com.wx.domain.vo.HotArticleVo;
import com.wx.domain.vo.PageVo;
import com.wx.mapper.ArticleMapper;
import com.wx.service.ArticleService;
import com.wx.service.CategoryService;
import com.wx.utils.BeanCopyUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
//文章表（Article）服务实现类

@Service//标记当前类是一个service类，加入该注解会将当前类自动注入到spring容器中
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements ArticleService {
    @Autowired
    private CategoryService categoryService;
    @Override
    public ResponseResult hotArticleList() {
        //查询热门文章 封装成ResponseResult返回
        LambdaQueryWrapper<Article> queryWrapper=new LambdaQueryWrapper<>();
        //必须是正式文章
        queryWrapper.eq(Article::getStatus, SystemConstants.ARTICLE_STATUS_NORMAL);//会拿Article里的字段与0进行比较
        //按照浏览量进行排序
        queryWrapper.orderByDesc(Article::getViewCount);
        //最多只查询10条 //分页
        Page<Article> page=new Page(1,10);
        page(page,queryWrapper);
        List<Article> articles=page.getRecords();
        /*//bean拷贝
        List<HotArticleVo> articleVos=new ArrayList<>();
        for(Article article:articles){
            HotArticleVo vo=new HotArticleVo();
            BeanUtils.copyProperties(article,vo);
            articleVos.add(vo);
        }*/
        List<HotArticleVo> vs= BeanCopyUtils.copyBeanList(articles,HotArticleVo.class);
        return ResponseResult.okResult(vs);
    }

    @Override
    public ResponseResult articleList(Integer pageNum, Integer pageSize, Long categoryId) {
        //查询条件
        LambdaQueryWrapper<Article> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        // 如果 有categoryId 就要 查询时要和传入的相同
        lambdaQueryWrapper.eq(Objects.nonNull(categoryId)&&categoryId>0 ,Article::getCategoryId,categoryId);
        // 状态是正式发布的
        lambdaQueryWrapper.eq(Article::getStatus,SystemConstants.ARTICLE_STATUS_NORMAL);
        // 对isTop进行降序
        lambdaQueryWrapper.orderByDesc(Article::getIsTop);

        //分页查询
        Page<Article> page = new Page<>(pageNum,pageSize);
        page(page,lambdaQueryWrapper);

        List<Article> articles = page.getRecords();
        //查询categoryName
        articles.stream()
                .map(article -> article.setCategoryName(categoryService.getById(article.getCategoryId()).getName()))
                .collect(Collectors.toList());
        //articleId去查询articleName进行设置
//        for (Article article : articles) {
//            Category category = categoryService.getById(article.getCategoryId());
//            article.setCategoryName(category.getName());
//        }

        //封装查询结果
        List<ArticleListVo> articleListVos = BeanCopyUtils.copyBeanList(page.getRecords(), ArticleListVo.class);

        PageVo pageVo = new PageVo(articleListVos,page.getTotal());
        return ResponseResult.okResult(pageVo);
    }

    @Override
    public ResponseResult getArticleDetail(Long id) {
            //根据id查询文章
            Article article = getById(id);
            //转换成vo
            ArticleDetailVo articleDetailVo = BeanCopyUtils.copyBean(article, ArticleDetailVo.class);
            //根据分类id查询分类名
            Long categoryId = articleDetailVo.getCategoryId();
            Category category = categoryService.getById(categoryId);
            if(category!=null){
                articleDetailVo.setCategoryName(category.getName());
            }
            //封装响应返回
            return ResponseResult.okResult(articleDetailVo);
        }
    }
