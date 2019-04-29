SET NAMES UTF8;
DROP DATABASE IF EXISTS wsm;
CREATE DATABASE wsm CHARSET=UTF8;
USE wsm;
CREATE TABLE w_swipe(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    swipe_img VARCHAR(128)
); 
INSERT INTO w_swipe VALUES(null,"banner1.png");
INSERT INTO w_swipe VALUES(null,"banner2.png");
INSERT INTO w_swipe VALUES(null,"banner3.png");
INSERT INTO w_swipe VALUES(null,"banner4.png");
INSERT INTO w_swipe VALUES(null,"banner5.png");

#九宫格
CREATE TABLE w_grid(
    gid INT PRIMARY KEY AUTO_INCREMENT,
    grid_img VARCHAR(128),
    title VARCHAR(32),
    href VARCHAR(128)
);
INSERT INTO w_grid VALUES(null,"1.svg","每日签到","/home");
INSERT INTO w_grid VALUES(null,"2.svg","排行榜单","/home");
INSERT INTO w_grid VALUES(null,"3.svg","创建房间","/home");
INSERT INTO w_grid VALUES(null,"4.svg","查找房间","/home");
INSERT INTO w_grid VALUES(null,"5.svg","快速匹配","/home");
#分区
CREATE TABLE w_cate(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    url VARCHAR(128)
);
INSERT INTO w_cate VALUES(null,"http://127.0.0.1:3000/c1.png");
INSERT INTO w_cate VALUES(null,"http://127.0.0.1:3000/c2.png");
INSERT INTO w_cate VALUES(null,"http://127.0.0.1:3000/c3.png");

#剧本列表
CREATE TABLE w_storyList(
    slid INT PRIMARY KEY AUTO_INCREMENT,
    title_img VARCHAR(128),
    title VARCHAR(16),
    genre VARCHAR(16),
    detail VARCHAR(16),
    score DECIMAL(2,1)
);
INSERT INTO w_storyList VALUES(null,"http://127.0.0.1:3000/assets/list/list1.png","新手教程","简单本","1人剧本",4.5);
INSERT INTO w_storyList VALUES(null,"http://127.0.0.1:3000/assets/list/list2.png","云霄之恋1（新手推荐）","简单本","4人剧本",4);
INSERT INTO w_storyList VALUES(null,"http://127.0.0.1:3000/assets/list/list3.png","总裁之死（漫画本）","简单本","4人剧本",3.5);
INSERT INTO w_storyList VALUES(null,"http://127.0.0.1:3000/assets/list/list3.png","总裁之死（漫画本）","简单本","4人剧本",4.5);
