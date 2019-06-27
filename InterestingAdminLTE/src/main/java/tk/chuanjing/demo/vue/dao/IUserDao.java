package tk.chuanjing.demo.vue.dao;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import tk.chuanjing.demo.vue.domain.User;

import java.util.List;

/**
 * 用户的持久层接口
 */
public interface IUserDao {

    /**
     * 查询用户列表
     */
    @Select("select * from user")
    List<User> findAll();

    /**
     * 根据id查询
     * @param id
     * @return
     */
    @Select("select * from user where id = #{id} ")
    User findById(Integer id);

    /**
     * 更新用户
     * @param user
     */
    @Update("update user set username=#{username},password=#{password},nickname=#{nickname},email=#{email},age=#{age},sex=#{sex},telephone=#{telephone} where id=#{id}")
    void updateUser(User user);
}
