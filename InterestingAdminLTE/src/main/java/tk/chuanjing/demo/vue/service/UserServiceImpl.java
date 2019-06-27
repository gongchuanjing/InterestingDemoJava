package tk.chuanjing.demo.vue.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.chuanjing.demo.vue.dao.IUserDao;
import tk.chuanjing.demo.vue.domain.User;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserDao userDao;

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public User findById(Integer id) {
        return userDao.findById(id);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }
}
