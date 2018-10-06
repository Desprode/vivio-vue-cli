DROP DATABASE IF EXISTS vivo;
#特殊要求:苹果手机 utf8mbs
CREATE DATABASE vivo CHARSET=UTF8;
USE vivo;
#3.创建一张表,用户表
CREATE TABLE users (
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32)
);
INSERT INTO users VALUES(null,'tom',md5('123'));
INSERT INTO users VALUES(null,'jerry',md5('123'));
INSERT INTO users VALUES(null,'jack',md5('123'));
INSERT INTO users VALUES(null,'mary',md5('123'));

#4.创建一张图片轮播表
CREATE TABLE imagelist(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(248),
    title VARCHAR(255)
);
INSERT INTO imagelist VALUES(null,'banner1.png','phone');
INSERT INTO imagelist VALUES(null,'banner2.png','phone');
INSERT INTO imagelist VALUES(null,'banner3.png','phone');
INSERT INTO imagelist VALUES(null,'banner4.png','phone');

#5.创建一张新闻列表
CREATE TABLE newslist(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    add_time DATETIME,
    click INT,
    img_url VARCHAR(255),
    content VARCHAR(255)
);
INSERT INTO newslist VALUES(null,'..1',now(),0,'http://127.0.0.1:3000/img/avatar/default.png','欢迎来到vivo商城');
INSERT INTO newslist VALUES(null,'..2',now(),0,'http://127.0.0.1:3000/img/avatar/default.png','欢迎来到vivo商城');
INSERT INTO newslist VALUES(null,'..3',now(),0,'http://127.0.0.1:3000/img/avatar/default.png','欢迎来到vivo商城');

#6.创建评论列表
CREATE TABLE commentlist(
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255),
    add_time DATETIME,
    content VARCHAR(255),
    nid INT
);
INSERT INTO commentlist VALUES(null,'dd1',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd2',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd3',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd4',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd5',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd6',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd7',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd8',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd9',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd10',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd11',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd12',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd13',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd14',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd15',now(),'hellow',1);
INSERT INTO commentlist VALUES(null,'dd16',now(),'hellow',1);
#创建购物车列表
CREATE TABLE cartlist(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uid INT,
    img_url VARCHAR(255),
    title VARCHAR(255),
    price DECIMAL(10,2),
    count INT
);
INSERT INTO cartlist VALUES(null,1,'http://127.0.0.1:3000/img/product/vivo/8.png','vivoX25',3999,2);
INSERT INTO cartlist VALUES(null,1,'http://127.0.0.1:3000/img/product/vivo/3.png','vivoNEX',4999,3);
INSERT INTO cartlist VALUES(null,1,'http://127.0.0.1:3000/img/product/vivo/1.jpg','vivoX100',5999,4);

#创建一张商品详情表
CREATE TABLE pro_pic(
    id INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    sm_url VARCHAR(255),
    md_url VARCHAR(255),
    lg_url VARCHAR(255)
);
INSERT INTO pro_pic VALUES(null,1,'http://127.0.0.1:3000/img/product/vivo/1.png','http://127.0.0.1:3000/img/detail/155290130095829463.jpg','http://127.0.0.1:3000/img/detail/845419528049172443.jpg');
INSERT INTO pro_pic VALUES(null,2,'http://127.0.0.1:3000/img/detail/5174_1535358954455hd_bi_250x250.png','http://127.0.0.1:3000/img/detail/5174_1534929750273hd_bi_250x250.png','http://127.0.0.1:3000/img/detail/5174_1534929745034hd_bi_750x750.png');
INSERT INTO pro_pic VALUES(null,3,'http://127.0.0.1:3000/img/detail/820373566423359681.jpg','http://127.0.0.1:3000/img/detail/780856112798843206.png','http://127.0.0.1:3000/img/detail/190714283305194817.jpg');
INSERT INTO pro_pic VALUES(null,4,'http://127.0.0.1:3000/img/detail/5097_1534838056337hd_bi_750x750.png','http://127.0.0.1:3000/img/detail/155290130095829463.jpg','http://127.0.0.1:3000/img/detail/845419528049172443.jpg');
INSERT INTO pro_pic VALUES(null,5,'http://127.0.0.1:3000/img/detail/5097_1534838056337hd_bi_750x750.png','http://127.0.0.1:3000/img/detail/155290130095829463.jpg','http://127.0.0.1:3000/img/detail/845419528049172443.jpg');
INSERT INTO pro_pic VALUES(null,6,'http://127.0.0.1:3000/img/detail/5080_1534836576680hd_bi_750x750.png','http://127.0.0.1:3000/img/detail/160802234300531901.png','http://127.0.0.1:3000/img/detail/780856112798843206.png');
INSERT INTO pro_pic VALUES(null,7,'http://127.0.0.1:3000/img/detail/5174_1535358954455hd_bi_750x750.png','http://127.0.0.1:3000/img/detail/5174_1534929750273hd_bi_250x250.png','http://127.0.0.1:3000/img/detail/5174_1534929745034hd_bi_250x250.png');
INSERT INTO pro_pic VALUES(null,8,'http://127.0.0.1:3000/img/detail/5097_1534838056337hd_bi_750x750.png','http://127.0.0.1:3000/img/detail/155290130095829463.jpg','http://127.0.0.1:3000/img/detail/845419528049172443.jpg');
INSERT INTO pro_pic VALUES(null,9,'http://127.0.0.1:3000/img/detail/5174_1535358954455hd_bi_750x750.png','http://127.0.0.1:3000/img/detail/5174_1534929750273hd_bi_250x250.png','http://127.0.0.1:3000/img/detail/5174_1534929745034hd_bi_250x250.png');
INSERT INTO pro_pic VALUES(null,10,'http://127.0.0.1:3000/img/detail/5097_1534838056337hd_bi_750x750.png','http://127.0.0.1:3000/img/detail/155290130095829463.jpg','http://127.0.0.1:3000/img/detail/845419528049172443.jpg');
INSERT INTO pro_pic VALUES(null,11,'http://127.0.0.1:3000/img/detail/5174_1535358954455hd_bi_750x750.png','http://127.0.0.1:3000/img/detail/5174_1534929750273hd_bi_250x250.png','http://127.0.0.1:3000/img/detail/5174_1534929745034hd_bi_250x250.png');
INSERT INTO pro_pic VALUES(null,12,'http://127.0.0.1:3000/img/product/vivo/1.png','http://127.0.0.1:3000/img/detail/155290130095829463.jpg','http://127.0.0.1:3000/img/detail/845419528049172443.jpg');
INSERT INTO pro_pic VALUES(null,13,'http://127.0.0.1:3000/img/detail/5174_1535358954455hd_bi_750x750.png','http://127.0.0.1:3000/img/detail/5174_1534929750273hd_bi_250x250.png','http://127.0.0.1:3000/img/detail/5174_1534929745034hd_bi_250x250.png');

