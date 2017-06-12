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
        String account = (String) principalCollection.getPrimaryPrincipal();
        UserPo userPo = userService.findUserByAccount(account);
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
        String account = upToken.getUsername().trim();
        UserPo userPo = userService.findUserByAccount(account);
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(userPo.getAcount(), userPo.getPassword(),getName());
        info.setCredentialsSalt(ByteSource.Util.bytes(userPo.getSalt()));
        return info;
    }
}
