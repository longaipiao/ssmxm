/*
package com.zking.ssm.shiro;

import com.zking.ssm.model.Permission;
import com.zking.ssm.model.User;
import com.zking.ssm.service.EmpService;
import com.zking.ssm.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class MyRealm extends AuthorizingRealm {

    @Autowired
    private EmpService empServiecImpl;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("进行了授权");
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        //获得认证通过之后的用户
        User user = (User) principalCollection.getPrimaryPrincipal();
        //根据用户Id查询用户权限
        List<Permission> permissions = userService.getPermissionById(user.getUid());
        //将权限信息存入info对象
        if (permissions.size()!=0){
            for (Permission permission : permissions) {
                info.addStringPermission(permission.getPermission());
            }
        }
        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("进行了认证");
        //将接收到用户信息转换
        UsernamePasswordToken token = (UsernamePasswordToken)authenticationToken;
        //1.根据用户名获得用户对象（数据库）
        User user=new User();
        user.setUsername(token.getUsername());
        User dbUser = userService.getUserByUsername(user);
        System.out.println("数据库对象="+dbUser);
        if(dbUser==null){
            return null;
        }

        return new SimpleAuthenticationInfo(dbUser,dbUser.getPassword(),this.getClass().getSimpleName());
    }
}
*/
