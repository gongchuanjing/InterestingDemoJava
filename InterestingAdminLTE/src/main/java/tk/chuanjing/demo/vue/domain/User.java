package tk.chuanjing.demo.vue.domain;

import java.util.Objects;

public class User {
	private Integer id;
	private String username;
	private String password;
	private String nickname;
	private String email;
	private String sex;
	private Integer age;
	private String telephone;
	
	public User() {
		super();
	}

	public User(Integer id, String username, String password, String nickname,
			String email, String sex, Integer age, String telephone) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.nickname = nickname;
		this.email = email;
		this.sex = sex;
		this.age = age;
		this.telephone = telephone;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	@Override
	public String toString() {
		return "tk.chuanjing.demo.vue.domain.User [id=" + id + ", username=" + username + ", password="
				+ password + ", nickname=" + nickname + ", email=" + email
				+ ", sex=" + sex + ", age=" + age + ", telephone=" + telephone
				+ "]";
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		User user = (User) o;
		return Objects.equals(id, user.id) &&
				Objects.equals(username, user.username) &&
				Objects.equals(password, user.password) &&
				Objects.equals(nickname, user.nickname) &&
				Objects.equals(email, user.email) &&
				Objects.equals(sex, user.sex) &&
				Objects.equals(age, user.age) &&
				Objects.equals(telephone, user.telephone);
	}

	@Override
	public int hashCode() {

		return Objects.hash(id, username, password, nickname, email, sex, age, telephone);
	}
}