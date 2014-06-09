CREATE TABLE `userrole` (
	role_id BIGINT NOT NULL AUTO_INCREMENT ,
	role_name varchar(255) NOT NULL ,
	role_desc varchar(255) NOT NULL ,
	PRIMARY KEY (role_id)
);

CREATE TABLE `users` (
	user_id BIGINT NOT NULL AUTO_INCREMENT ,
	user_name varchar(20) NOT NULL ,
	user_pass varchar(255) NOT NULL ,
	role_id BIGINT NOT NULL ,
	PRIMARY KEY (user_id) , 
	FOREIGN KEY (role_id) REFERENCES userrole(role_id) 
);

CREATE TABLE `usermeta` (
	umeta_id BIGINT NOT NULL AUTO_INCREMENT ,
	user_id BIGINT NOT NULL ,
	meta_key varchar(20) NOT NULL ,
	meta_value varchar(255) NOT NULL ,
	PRIMARY KEY (umeta_id) ,
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE `transaction_mode` (
	mode_id BIGINT NOT NULL AUTO_INCREMENT ,
	mode_name varchar(255) NOT NULL ,
	mode_desc varchar(255) NOT NULL ,
	PRIMARY KEY (mode_id)
);

CREATE TABLE `transactions_category` (
	cat_id BIGINT NOT NULL AUTO_INCREMENT ,
	cat_name varchar(255) NOT NULL ,
	cat_desc varchar(255) NOT NULL ,
	PRIMARY KEY (cat_id)
);

CREATE TABLE `category_relationship` (
	rel_id bigint(20) NOT NULL AUTO_INCREMENT,
	cat_id bigint(20) NOT NULL,
	cat_parent bigint(20) NOT NULL,
	PRIMARY KEY (`rel_id`),
	UNIQUE KEY `cat_relation` (`cat_id`,`cat_parent`),
	FOREIGN KEY (cat_id) REFERENCES transactions_category(cat_id),
	FOREIGN KEY (cat_parent) REFERENCES transactions_category(cat_id)
);

CREATE TABLE `transactions` (
	tr_id BIGINT NOT NULL AUTO_INCREMENT ,
	tr_date DATE ,
	tr_title varchar(255) NOT NULL ,
	tr_desc varchar(255) NOT NULL ,
	mode_id BIGINT NOT NULL ,
	cat_id BIGINT NOT NULL ,
	user_id BIGINT NOT NULL ,
	PRIMARY KEY (tr_id) ,
	FOREIGN KEY (mode_id) REFERENCES transaction_mode(mode_id) ,	
	FOREIGN KEY (cat_id) REFERENCES transactions_category(cat_id) , 
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);