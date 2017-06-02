package com.baseArc.shiro;

import com.baseArc.po.UserPo;
import com.baseArc.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

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
        //authorizationInfo.setRoles(userAuthService.findStringRoles(userPo));
        Set<String> roleSet = new HashSet<>();
        roleSet.add("admin");
        authorizationInfo.setRoles(roleSet);

        //authorizationInfo.setStringPermissions(userAuthService.findStringPermissions(user));
        Set<String> permissionSet = new HashSet<>();
        roleSet.add("admin");
        authorizationInfo.setStringPermissions(permissionSet);
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
           // userPo = userService.login(username, password);
            userPo = userService.listUserPo().get(1);
        } catch (Exception e) {
            throw new AuthenticationException("登录失败");
        }
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(userPo.getUsername(),userPo.getPassword(),getName());
        info.setCredentialsSalt(ByteSource.Util.bytes(userPo.getSalt()));
        return info;
    }
}
