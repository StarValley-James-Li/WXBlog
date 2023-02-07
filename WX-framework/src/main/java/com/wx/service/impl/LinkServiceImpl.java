package com.wx.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.wx.constants.SystemConstants;
import com.wx.domain.ResponseResult;
import com.wx.domain.entity.Link;
import com.wx.domain.vo.LinkVo;
import com.wx.mapper.LinkMapper;
import com.wx.service.LinkService;
import com.wx.utils.BeanCopyUtils;
import org.springframework.stereotype.Service;

import java.util.List;

//友链(Link)表服务实现类

@Service("linkService")
public class LinkServiceImpl extends ServiceImpl<LinkMapper, Link> implements LinkService {

    @Override
    public ResponseResult getAllLink() {
        //查询所有审核通过的
        LambdaQueryWrapper<Link> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Link::getStatus, SystemConstants.LINK_STATUS_NORMAL);
        List<Link> links = list(queryWrapper);
        //转换成vo
        List<LinkVo> linkVos = BeanCopyUtils.copyBeanList(links, LinkVo.class);
        //封装返回
        return ResponseResult.okResult(linkVos);
    }

 }


