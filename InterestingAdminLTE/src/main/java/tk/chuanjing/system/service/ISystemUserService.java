package tk.chuanjing.system.service;

import org.springframework.security.core.userdetails.UserDetailsService;
import tk.chuanjing.system.domain.Role;
import tk.chuanjing.system.domain.UserInfo;

import java.util.List;

public interface ISystemUserService extends UserDetailsService {
    List<UserInfo> findAll() throws Exception;

    void save(UserInfo userInfo) throws Exception;

    UserInfo findById(String id) throws Exception;

    List<Role> findOtherRoles(String userId) throws Exception;

    void addRoleToUser(String userId, String[] roleIds);
}
