# 电子书表
drop table if exists `ebook`;
create table `ebook` (
    `id` bigint not null comment 'id',
    `name` varchar(50) comment '名称',
    `description` varchar(200) comment '描述',
    `cover` varchar(200) comment '封面',
    `category1_id` bigint comment '分类1',
    `category2_id` bigint comment '分类2',
    `doc_count` int comment '文档数',
    `view_count` int comment '阅读数',
    `vote_count` int comment '点赞数',
    primary key (`id`)
) engine =innodb default charset =utf8mb4 comment ='电子书';

insert into `ebook` (id,name,description) values(1,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(2,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(3,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(4,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(5,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(6,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(7,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(8,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(9,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(10,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(11,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(12,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(13,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(14,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(15,'spring boot入门教程','零基础入门开发');
insert into `ebook` (id,name,description) values(16,'spring boot入门教程','零基础入门开发');


# 分类表
drop table if exists `category`;
create table `category` (
                         `id` bigint not null comment 'id',
                         `parent` bigint not null default 0 comment '父id',
                         `name` varchar(200) comment '名称',
                         `sort` int comment '顺序',
                         primary key (`id`)
) engine =innodb default charset =utf8mb4 comment ='分类';

insert into `category` (id,parent,name,sort) values(100,000,'前端开发',100);
insert into `category` (id,parent,name,sort) values(101,100,'vue',101);
insert into `category` (id,parent,name,sort) values(102,100,'html & css',102);
insert into `category` (id,parent,name,sort) values(200,000,'java',200);
insert into `category` (id,parent,name,sort) values(201,200,'基础应用',201);
insert into `category` (id,parent,name,sort) values(202,200,'框架应用',202);
insert into `category` (id,parent,name,sort) values(300,300,'python',300);
