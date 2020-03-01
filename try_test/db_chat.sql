create table chat_record
(
    id      int primary key auto_increment,
    u_id    int,
    content text,
    time    datetime default now(),
    constraint u_fk foreign key (u_id) references user (id)
);
insert into chat_record
(id, u_id, content)
values (1, 1,'Welcome to chatroom');
insert into chat_record
(id, u_id, content)
values (2, 2,'Hello');
insert into chat_record
(record_id, u_id, content)
values (3, 3,'Hello world');
insert into chat_record
(record_id, u_id, content)
values (4, 4,'Hello world sda');
insert into chat_record
(record_id, u_id, content)
values (5, 4,' world sda');

select * from chat_record;
select * from user;

select record_id,content,time,username from chat_record as c,user as u where c.u_id=u.id;


insert into chat_record (u_id, content) values (2, 'asd');