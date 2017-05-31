package com.baseArc.shiro;

import com.baseArc.po.UserPo;
import com.baseArc.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/5/31
 * @Description: [ xxxx ]
 * @Version: 1.0
 */
public class UserRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username = (String) principalCollection.getPrimaryPrincipal();
        UserPo userPo = userService.findByUsername(username);
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
       // authorizationInfo.setRoles(userAuthService.findStringRoles(userPo));
       // authorizationInfo.setStringPermissions(userAuthService.findStringPermissions(user));
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken upToken = (UsernamePasswordToken) authenticationToken;
        String username = upToken.getUsername().trim();
        String password = "";
        if (upToken.getPassword() != null) {
            password = new String(upToken.getPassword());
        }
        UserPo userPo = null;
        try {
            userPo = userService.login(username, password);
        } catch (Exception e) {
            throw new AuthenticationException("登录失败");
        }
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(userPo.getUsername(), password.toCharArray(), getName());
        return info;
    }
}
