CREATE TABLE USERS
(u_username VARCHAR(25) NOT NULL,
u_password VARCHAR(50) NOT NULL,
u_active INT NOT NULL,
PRIMARY KEY (u_username));


CREATE TABLE USER_ROLES (
  r_id int(11) NOT NULL AUTO_INCREMENT,
  r_username varchar(45) NOT NULL,
  r_role varchar(45) NOT NULL,
  PRIMARY KEY (r_id),
  UNIQUE KEY uis_username_role (r_role,r_username),
  FOREIGN KEY (r_username) REFERENCES USERS(u_username));
  