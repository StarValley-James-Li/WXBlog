package com.wx.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.wx.domain.ResponseResult;
import com.wx.domain.entity.User;
import com.wx.domain.vo.UserInfoVo;
import com.wx.enums.AppHttpCodeEnum;
import com.wx.mapper.UserMapper;
import com.wx.service.UserService;
import com.wx.utils.BeanCopyUtils;
import com.wx.utils.SecurityUtils;
import org.omg.CORBA.SystemException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

//用户表(User)表服务实现类

@Service("userService")
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

        @Override
        public ResponseResult userInfo() {
            //获取当前用户id
            Long userId = SecurityUtils.getUserId();
            //根据用户id查询用户信息
            User user = getById(userId);
            //封装成UserInfoVo
            UserInfoVo vo = BeanCopyUtils.copyBean(user, UserInfoVo.class);
            return ResponseResult.okResult(vo);
        }

    @Override
    public ResponseResult updateUserInfo(User user) {
        updateById(user);
        return ResponseResult.okResult();
    }

    @Autowired
    private PasswordEncoder passwordEncoder;
    @Override
    public ResponseResult register(User user) {
        //对数据进行非空判断
        if(!StringUtils.hasText(user.getUserName())){
            System.out.println();
        }
        if(!StringUtils.hasText(user.getPassword())){
            System.out.println();
        }
        if(!StringUtils.hasText(user.getEmail())){
            System.out.println();
        }
        if(!StringUtils.hasText(user.getNickName())){
            System.out.println();
        }
        //对数据进行是否存在的判断
        if(userNameExist(user.getUserName())){
            System.out.println();
        }
        if(nickNameExist(user.getNickName())){
            System.out.println();
        }
        //...
        //对密码进行加密
        String encodePassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encodePassword);
        //存入数据库
        save(user);
        return ResponseResult.okResult();
    }

    private boolean userNameExist(String userName){
        LambdaQueryWrapper<User> queryWrapper=new LambdaQueryWrapper<>();
        queryWrapper.eq(User::getUserName,userName);
        return count(queryWrapper)>0;
    }

    private boolean nickNameExist(String nickName){
        LambdaQueryWrapper<User> queryWrapper=new LambdaQueryWrapper<>();
        queryWrapper.eq(User::getNickName,nickName);
        return count(queryWrapper)>0;
    }
 }


