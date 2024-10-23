create table student
(
    id                 int unsigned auto_increment
        primary key,
    name               varchar(20)                        null,
    class_id           int unsigned                       null,
    registration       char(10)                           null comment '学号',
    gender             int                                null comment '1男 2女',
    phone              varchar(20)                        null,
    education          int                                null comment '1初中 2高中 3大专 4本科 5硕士 6博士',
    disciplinary       int      default 0                 null comment '违纪次数',
    disciplinary_score int      default 0                 null comment '违纪分数',
    update_time        datetime default CURRENT_TIMESTAMP null,
    constraint phone
        unique (phone),
    constraint registration
        unique (registration)
);
