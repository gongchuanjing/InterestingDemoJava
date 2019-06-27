package tk.chuanjing.system.dao;

import org.apache.ibatis.annotations.*;
import tk.chuanjing.system.domain.Permission;
import tk.chuanjing.system.domain.Role;

import java.util.List;

public interface IRoleDao {

    //根据用户id查询出所有对应的角色
    @Select("select * from system_role where id in (select roleId from system_user_role where userId=#{userId})")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(property = "roleName", column = "roleName"),
            @Result(property = "roleDesc", column = "roleDesc"),
            @Result(property = "permissions",column = "id",javaType = List.class,many = @Many(select = "tk.chuanjing.system.dao.IPermissionDao.findPermissionByRoleId"))
    })
    public List<Role> findRoleByUserId(String userId) throws Exception;

    @Select("select * from system_role")
    List<Role> findAll() throws Exception;

    @SelectKey(keyProperty = "id",resultType = String.class, before = true, statement = "select replace(uuid(), '-', '')")
    @Options(keyProperty = "id", useGeneratedKeys = true)
    @Insert("insert into system_role(id,roleName,roleDesc) values(#{id},#{roleName},#{roleDesc})")
    void save(Role role);

    @Select("select * from system_role where id=#{roleId}")
    @Results({
            @Result(id = true,property = "id",column = "id"),
            @Result(property = "roleName",column = "roleName"),
            @Result(property = "roleDesc",column = "roleDesc"),
            @Result(property = "permissions",column = "id",javaType = List.class,many = @Many(select = "tk.chuanjing.system.dao.IPermissionDao.findPermissionByRoleId"))
    })
    Role findById(String roleId);

    @Select("select * from system_permission where id not in (select permissionId from system_role_permission where roleId=#{roleId})")
    List<Permission> findOtherPermissions(String roleId);

    @Insert("insert into system_role_permission(roleId,permissionId) values(#{roleId},#{permissionId})")
    void addPermissionToRole(@Param("roleId") String roleId, @Param("permissionId") String permissionId);

    @Delete("delete from system_user_role where roleId=#{roleId}")
    void deleteFromUser_RoleByRoleId(String roleId);

    @Delete("delete from system_role_permission where roleId=#{roleId}")
    void deleteFromRole_PermissionByRoleId(String roleId);

    @Delete("delete from system_role where id=#{roleId}")
    void deleteRoleById(String roleId);
}
