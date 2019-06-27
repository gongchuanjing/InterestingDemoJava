CREATE TABLE `system_user`(
id VARCHAR(32) PRIMARY KEY,
email VARCHAR(50) UNIQUE NOT NULL,
username VARCHAR(50),
PASSWORD VARCHAR(50),
phoneNum VARCHAR(20),
STATUS INT2
)

-- 角色表
CREATE TABLE system_role(
id VARCHAR(32) PRIMARY KEY,
roleName VARCHAR(50) ,
roleDesc VARCHAR(50)
)


-- 用户角色关联表
CREATE TABLE system_user_role(
userId VARCHAR(32),
roleId VARCHAR(32),
PRIMARY KEY(userId,roleId),
FOREIGN KEY (userId) REFERENCES `system_user`(id),
FOREIGN KEY (roleId) REFERENCES system_role(id)
)

-- 资源权限表
CREATE TABLE system_permission(
id VARCHAR(32) PRIMARY KEY,
permissionName VARCHAR(50) ,
url VARCHAR(50)
)

-- 角色权限关联表
CREATE TABLE system_role_permission(
permissionId VARCHAR(32),
roleId VARCHAR(32),
PRIMARY KEY(permissionId,roleId),
FOREIGN KEY (permissionId) REFERENCES system_permission(id),
FOREIGN KEY (roleId) REFERENCES system_role(id)
)

-- 日志表
CREATE TABLE system_log(
id VARCHAR(32) PRIMARY KEY,
visitTime timestamp,
username VARCHAR(50),
ip VARCHAR(30),
url VARCHAR(50),
executionTime int,
method VARCHAR(200)
)