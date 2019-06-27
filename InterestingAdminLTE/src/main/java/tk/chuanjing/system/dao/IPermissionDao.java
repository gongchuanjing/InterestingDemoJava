package tk.chuanjing.system.dao;

import org.apache.ibatis.annotations.*;
import tk.chuanjing.system.domain.Permission;

import java.util.List;

public interface IPermissionDao {
    //查询与role关联的所有的权限
    @Select("select * from system_permission where id in (select permissionId from system_role_permission where roleId=#{id} )")
    public List<Permission> findPermissionByRoleId(String id) throws Exception;


    @Select("select * from system_permission")
    List<Permission> findAll() throws Exception;

    @SelectKey(keyProperty = "id",resultType = String.class, before = true, statement = "select replace(uuid(), '-', '')")
    @Options(keyProperty = "id", useGeneratedKeys = true)
    @Insert("insert into system_permission(id,permissionName,url) values(#{id},#{permissionName},#{url})")
    void save(Permission permission) throws Exception;

    @Select("select * from system_permission where id=#{id}")
    Permission findById(String id) throws Exception;

    @Delete("delete from system_role_permission where permissionId=#{id}")
    void deleteFromRole_Permission(String id) throws Exception;

    @Delete("delete from system_permission where id=#{id}")
    void deleteById(String id) throws Exception ;
}
