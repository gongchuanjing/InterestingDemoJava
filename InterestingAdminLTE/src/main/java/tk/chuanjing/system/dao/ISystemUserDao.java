package tk.chuanjing.system.dao;

import org.apache.ibatis.annotations.*;
import tk.chuanjing.system.domain.Role;
import tk.chuanjing.system.domain.UserInfo;

import java.util.List;

public interface ISystemUserDao {

    @Select("select * from system_user where username=#{username}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "username", column = "username"),
            @Result(property = "email", column = "email"),
            @Result(property = "password", column = "password"),
            @Result(property = "phoneNum", column = "phoneNum"),
            @Result(property = "status", column = "status"),
            @Result(property = "roles",column = "id",javaType = List.class,many = @Many(select = "tk.chuanjing.system.dao.IRoleDao.findRoleByUserId"))
    })
    public UserInfo findByUsername(String username) throws Exception;

    @Select("select * from system_user")
    List<UserInfo> findAll() throws Exception;

    @SelectKey(keyProperty = "id",resultType = String.class, before = true, statement = "select replace(uuid(), '-', '')")
    @Options(keyProperty = "id", useGeneratedKeys = true)
    @Insert("insert into system_user(id,email,username,password,phoneNum,status) values(#{id},#{email},#{username},#{password},#{phoneNum},#{status})")
    void save(UserInfo userInfo) throws Exception;

    @Select("select * from system_user where id=#{id}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "username", column = "username"),
            @Result(property = "email", column = "email"),
            @Result(property = "password", column = "password"),
            @Result(property = "phoneNum", column = "phoneNum"),
            @Result(property = "status", column = "status"),
            @Result(property = "roles",column = "id",javaType = List.class,many = @Many(select = "tk.chuanjing.system.dao.IRoleDao.findRoleByUserId"))
    })
    UserInfo findById(String id) throws Exception;

    @Select("select * from system_role where id not in (select roleId from system_user_role where userId=#{userId})")
    List<Role> findOtherRoles(String userId);

    @Insert("insert into system_user_role(userId,roleId) values(#{userId},#{roleId})")
    void addRoleToUser(@Param("userId") String userId, @Param("roleId") String roleId);
}
