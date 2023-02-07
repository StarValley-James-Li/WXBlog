package com.wx.domain.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

//文章表(Article)表实体类
@Data//用来代替get()、set()、toString()等方法
@AllArgsConstructor//添加一个构造函数，该构造函数含有所有已声明字段属性参数
@NoArgsConstructor//添加一个无参数的构造器
@SuppressWarnings("serial")
@TableName("wx_article")//实现实体类型和数据库中的表实现映射，表明是数据库中的哪个表
@Accessors(chain=true)//链式访问，该注解设置chain=true，生成setter方法返回this（也就是返回的是对象），代替了默认的返回void，可以使用链式的set如：User user=new User().setAge(31).setName("pollyduan");//返回对象
public class Article  {
    @TableId//标识主键
    private Long id;
    //标题
    private String title;
    //文章内容
    private String content;
    //文章摘要
    private String summary;
    //所属分类id
    private Long categoryId;

    @TableField(exist = false)
    private String categoryName;
    //缩略图
    private String thumbnail;
    //是否置顶（0否，1是）
    private String isTop;
    //状态（0已发布，1草稿）
    private String status;
    //访问量
    private Long viewCount;
    //是否允许评论 1是，0否
    private String isComment;
    
    private Long createBy;
    
    private Date createTime;
    
    private Long updateBy;
    
    private Date updateTime;
    //删除标志（0代表未删除，1代表已删除）
    private Integer delFlag;


}

