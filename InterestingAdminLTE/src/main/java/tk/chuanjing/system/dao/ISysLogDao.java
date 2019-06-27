package tk.chuanjing.system.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import tk.chuanjing.system.domain.SysLog;

import java.util.List;

public interface ISysLogDao {

    /**
     * keyProperty: 表示将select返回值设置到该属性中
     * resultType: 返回类型
     * before: 是否在insert之前执行
     * statement: 自定义子查询
     */
    @SelectKey(keyProperty = "id",resultType = String.class, before = true, statement = "select replace(uuid(), '-', '')")
    @Options(keyProperty = "id", useGeneratedKeys = true)
    @Insert("insert into system_log(id,visitTime,username,ip,url,executionTime,method) values(#{id},#{visitTime},#{username},#{ip},#{url},#{executionTime},#{method})")
    public void save(SysLog sysLog) throws Exception;

    @Select("select * from system_log")
    List<SysLog> findAll() throws Exception;
}
