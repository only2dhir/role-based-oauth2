drop table if exists roles;
drop table if exists user_roles;
drop table if exists users;
create table roles (id bigint not null auto_increment, created_on bigint, description varchar(255), modified_on bigint, name varchar(255), primary key (id)) engine=MyISAM;
create table user_roles (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=MyISAM;
create table users (id bigint not null auto_increment, email varchar(255), first_name varchar(255), last_name varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=MyISAM
alter table user_roles add constraint FKh8ciramu9cc9q3qcqiv4ue8a6 foreign key (role_id) references roles (id);
alter table user_roles add constraint FKhfh9dx7w3ubf1co1vdev94g3f foreign key (user_id) references users (id);

INSERT INTO roles(description,name) values ('Admin', 'ADMIN');
INSERT INTO roles(description,name) values ('User', 'USER');
INSERT INTO users (email,first_name, last_name,password,username) values ('admin@gmail.com','admin', 'admin','$2a$04$EZzbSqieYfe/nFWfBWt2KeCdyq0UuDEM1ycFF8HzmlVR6sbsOnw7u','admin');
insert into USER_ROLES(USER_ID,ROLE_ID) values (1,1);