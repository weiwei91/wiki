# 电子书表
drop table if exists `ebook`;
create table `ebook` (
    `id` bigint not null comment 'id',
    `name` varchar(50) comment '名称',
    `description` varchar(200) comment '描述',
    `cover` varchar(200) comment '封面',
    `category1_id` bigint comment '分类1',
    `category2_id` bigint comment '分类2',
    `doc_count` int not null default 0 comment '文档数',
    `view_count` int not null  default 0 comment '阅读数',
    `vote_count` int not null default 0 comment '点赞数',
    primary key (`id`)
) engine =innodb default charset =utf8mb4 comment ='电子书';

insert into `ebook` (id,name,description,category1_id,category2_id) values(1,'spring boot入门教程','零基础入门开发',200,202);
insert into `ebook` (id,name,description,category1_id,category2_id) values(2,'深入理解java虚拟机','深入理解java虚拟机',200,201);



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
insert into `category` (id,parent,name,sort) values(301,300,'进阶方向应用',302);
insert into `category` (id,parent,name,sort) values(400,000,'数据库',400);
insert into `category` (id,parent,name,sort) values(401,400,'mysql',401);
insert into `category` (id,parent,name,sort) values(402,400,'pgsql',402);
insert into `category` (id,parent,name,sort) values(500,000,'其他',500);
insert into `category` (id,parent,name,sort) values(501,500,'服务器',501);
insert into `category` (id,parent,name,sort) values(502,500,'开发工具',502);
insert into `category` (id,parent,name,sort) values(503,500,'热门服务端语言',503);


# 文档表
drop table if exists `doc`;
create table `doc` (
                            `id` bigint not null comment 'id',
                            `ebook_id` bigint not null default 0 comment '电子书id',
                            `parent` bigint not null default 0 comment '父id',
                            `name` varchar(50) comment '名称',
                            `view_count` int default 0 comment '阅读数',
                            `vote_count` int default 0 comment '点赞数',
                            `sort` int comment '顺序',
                            primary key (`id`)
) engine =innodb default charset =utf8mb4 comment ='文档';

insert into `doc` (id,ebook_id,parent,name,sort,view_count,vote_count) values(1,1,0,'文档1',1,0,0);
insert into `doc` (id,ebook_id,parent,name,sort,view_count,vote_count) values(2,1,1,'文档1.1',1,0,0);
insert into `doc` (id,ebook_id,parent,name,sort,view_count,vote_count) values(3,1,2,'文档2',2,0,0);
insert into `doc` (id,ebook_id,parent,name,sort,view_count,vote_count) values(4,1,2,'文档2.1',1,0,0);

# 文档内容
drop table if exists `content`;
create table `content` (
                       `id` bigint not null comment 'id',
                       `content` mediumtext not null comment '内容',
                       primary key (`id`)
) engine =innodb default charset =utf8mb4 comment ='文档内容';


# 用户表
drop table if exists `user`;
create table `user` (
                           `id` bigint not null comment 'id',
                           `login_name` varchar(50) not null comment '登陆名称',
                           `name` varchar(50) comment '昵称',
                           `password` char(32) not null comment '密码',
                           primary key (`id`),
                           unique key `login_name_unique` (`login_name`)
) engine =innodb default charset =utf8mb4 comment ='文档内容';

insert into `user` (id,`login_name`,`name`,`password`) values (1,'test','测试','test');

# 电子书快照表
drop table if exists `ebook_snapshot`;
create table `ebook_snapshot` (
                        `id` bigint auto_increment not null comment 'id',
                        `ebook_id` bigint not null default 0 comment '电子书id',
                        `date` date not null comment '快照日期',
                        `view_count` int not null default 0 comment '阅读数',
                        `vote_count` int not null default 0 comment '点赞数',
                        `view_increase` int not null default 0 comment '阅读增长',
                        `vote_increase` int not null default 0 comment '点赞增长',
                        primary key (`id`)
) engine =innodb default charset =utf8mb4 comment ='电子书快照表';




