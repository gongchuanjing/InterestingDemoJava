package tk.chuanjing.demo.vue.service;


import tk.chuanjing.demo.vue.domain.User;

import java.util.List;

/**
 * 用户的业务层接口
 */
public interface IUserService {

    /**
     * 查询用户列表
     */
    List<User> findAll();

    /**
     * 根据id查询
     * @param id
     * @return
     */
    User findById(Integer id);

    /**
     * 更新用户
     * @param user
     */
    void updateUser(User user);
}
