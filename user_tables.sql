--drop table AUTHORITIES;

--drop table USERS;

create table USERS
(
    username varchar(50) not null constraint user_pk primary key,
    password varchar(60) not null,
    enabled smallint default 1,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50)
);

create table AUTHORITIES
(
    username varchar(50) not null
        references USERS (username),
    authority    varchar(50) not null
);

-- 1 is enabled, 0 is disabled
insert into USERS (username, password, enabled, first_name, last_name, email)
values ('user', 'p', 0, 'Stacy', 'Read', 'sread@wctc.edu');

insert into USERS (username, password, first_name, last_name, email)
values ('admin', 'p', 'Hello', 'Kitty', 'hkitty@wctc.edu');

insert into AUTHORITIES values ('user', 'USER');
insert into AUTHORITIES values ('admin', 'USER');
insert into AUTHORITIES values ('admin', 'ADMIN');

-- password is 'p' in bcrypt form

--update USERS set password = '$2a$10$VXL.L95B8xtiU2pQvW25fuPtzBLy3xJxjtjX77bc6SMNJ2FUNjht6'
--where username in ('user', 'admin');

--insert into USERS (username, password, enabled, first_name, last_name, email)
--values ('user', '$2a$10$VXL.L95B8xtiU2pQvW25fuPtzBLy3xJxjtjX77bc6SMNJ2FUNjht6', 0, 'Stacy', 'Read', 'sread@wctc.edu');

--insert into USERS (username, password, enabled, first_name, last_name, email)
--values ('admin', '$2a$10$VXL.L95B8xtiU2pQvW25fuPtzBLy3xJxjtjX77bc6SMNJ2FUNjht6', 1, 'Hello', 'Kitty', 'hkitty@wctc.edu');