package dao;

import java.util.List;

import domain.User;

public interface UserDao {


	List<User> findAll();

	User findById(Integer id);

	public void insert(User user);

	public void update(User user);

	public void delete(User user);

	User findByLoginIdAndLoginPass(String loginId, String loginPass) throws Exception;

}
