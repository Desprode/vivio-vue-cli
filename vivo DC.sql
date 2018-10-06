-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-26 02:33:36
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vivo`
--

-- --------------------------------------------------------

--
-- 表的结构 `cartlist`
--

CREATE TABLE `cartlist` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cartlist`
--

INSERT INTO `cartlist` (`id`, `uid`, `img_url`, `title`, `price`, `count`) VALUES
(1, 1, 'http://127.0.0.1:3000/img/product/vivo/8.png', 'vivoX25', '3999.00', 1),
(2, 1, 'http://127.0.0.1:3000/img/product/vivo/3.png', 'vivoNEX', '4999.00', 1),
(3, 1, 'http://127.0.0.1:3000/img/product/vivo/4.png', 'vivoX100', '5999.00', 1);

-- --------------------------------------------------------

--
-- 表的结构 `commentlist`
--

CREATE TABLE `commentlist` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_avatar` varchar(255) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `commentlist`
--

INSERT INTO `commentlist` (`id`, `username`, `user_avatar`, `add_time`, `content`, `nid`) VALUES
(1, '妲己', 'http://127.0.0.1:3000/img/avatar/avatar1.jpg', '2018-08-30 07:58:01', '好评', 1),
(2, '甄姬', 'http://127.0.0.1:3000/img/avatar/avatar2.jpg', '2018-08-30 07:58:01', '好评', 2),
(3, '后裔', 'http://127.0.0.1:3000/img/avatar/avatar1.jpg', '2018-08-30 07:58:01', 'hellow', 1),
(4, '安琪拉', 'http://127.0.0.1:3000/img/avatar/avatar2.jpg', '2018-08-30 07:58:01', '越长大越孤单', 3),
(5, '高渐离', 'http://127.0.0.1:3000/img/avatar/avatar3.jpg', '2018-08-30 07:58:01', '陌生的尘世', 1),
(6, '程咬金', 'http://127.0.0.1:3000/img/avatar/avatar4.jpg', '2018-08-30 07:58:01', '少年是有多勇敢', 1),
(7, '张良', 'http://127.0.0.1:3000/img/avatar/avatar5.jpg', '2018-08-30 07:58:01', '大雨中期待着有彩虹', 5),
(8, '百里守约', 'http://127.0.0.1:3000/img/avatar/avatar7.jpg', '2018-08-30 07:58:01', '本来想着以后', 1),
(9, '亚瑟', 'http://127.0.0.1:3000/img/avatar/avatar8.jpg', '2018-08-30 07:58:01', '只能笑一笑问候', 1),
(10, 'dd10', 'http://127.0.0.1:3000/img/avatar/avatar7.jpg', '2018-08-30 07:58:01', 'hellow', 1),
(11, 'dd11', 'http://127.0.0.1:3000/img/avatar/avatar7.jpg\r\n', '2018-08-30 07:58:01', 'hellow', 1),
(12, 'dd12', 'http://127.0.0.1:3000/img/avatar/avatar4.jpg', '2018-08-30 07:58:01', 'hellow', 1),
(13, 'dd13', 'http://127.0.0.1:3000/img/avatar/avatar1.jpg', '2018-08-30 07:58:01', 'hellow', 2),
(14, 'dd14', 'http://127.0.0.1:3000/img/avatar/avatar5.jpg', '2018-08-30 07:58:01', 'hellow', 1),
(15, 'dd15', 'http://127.0.0.1:3000/img/avatar/avatar5.jpg', '2018-08-30 07:58:01', 'hellow', 1),
(16, 'dd16', 'http://127.0.0.1:3000/img/avatar/avatar5.jpg', '2018-08-30 07:58:01', 'hellow', 1),
(17, 'dd1', 'http://127.0.0.1:3000/img/avatar/avatar6.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(18, 'dd2', 'http://127.0.0.1:3000/img/avatar/avatar4.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(19, 'dd3', 'http://127.0.0.1:3000/img/avatar/avatar4.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(20, 'dd4', 'http://127.0.0.1:3000/img/avatar/avatar4.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(21, 'dd5', 'http://127.0.0.1:3000/img/avatar/avatar6.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(22, 'dd6', 'http://127.0.0.1:3000/img/avatar/avatar6.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(23, 'dd7', 'http://127.0.0.1:3000/img/avatar/avatar3.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(24, 'dd8', 'http://127.0.0.1:3000/img/avatar/avatar8.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(25, 'dd9', 'http://127.0.0.1:3000/img/avatar/avatar3.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(26, 'dd10', 'http://127.0.0.1:3000/img/avatar/avatar3.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(27, 'dd11', 'http://127.0.0.1:3000/img/avatar/avatar3.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(28, '钟馗', 'http://127.0.0.1:3000/img/avatar/avatar3.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(29, 'dd13', 'http://127.0.0.1:3000/img/avatar/avatar3.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(30, 'dd14', 'http://127.0.0.1:3000/img/avatar/avatar8.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(31, 'dd15', 'http://127.0.0.1:3000/img/avatar/avatar5.jpg', '2018-08-30 08:51:49', 'hellow', 1),
(32, '马可波罗', 'http://127.0.0.1:3000/img/avatar/avatar3.jpg', '2018-08-30 08:51:53', 'hellow', 1),
(33, 'aa', 'http://127.0.0.1:3000/img/avatar/avatar4.jpg', '2018-08-30 10:36:50', '123', 1),
(34, '\"cc\"', 'http://127.0.0.1:3000/img/avatar/avatar2.jpg', '2018-08-30 19:08:15', '\"这是第几楼\"', 1),
(35, '\"cc\"', 'http://127.0.0.1:3000/img/avatar/avatar2.jpg', '2018-08-30 19:14:02', '\"有出错哦了\"', 2),
(36, '\"cc\"', 'http://127.0.0.1:3000/img/avatar/avatar3.jpg', '2018-08-30 19:15:49', '\"123\"', 1),
(37, '鲁班', 'http://127.0.0.1:3000/img/avatar/avatar1.jpg', '2018-08-30 19:23:39', '\"为什么会\"', 2),
(38, '\"cc\"', 'http://127.0.0.1:3000/img/avatar/avatar2.jpg', '2018-08-30 19:29:24', '\"这是第三章图片\"', 3),
(39, '\"钟无艳\"', 'http://127.0.0.1:3000/img/avatar/avatar2.jpg', '2018-09-01 16:09:28', '\"大范德萨\"', 2),
(40, '\"钟无艳\"', 'http://127.0.0.1:3000/img/avatar/avatar5.jpg', '2018-09-01 16:18:01', '\"范德萨发大水\"', 4),
(41, '钟无艳', 'http://127.0.0.1:3000/img/avatar/avatar5.jpg', '2018-09-01 16:22:14', '\"我该说点啥呢\"', 4),
(42, '钟无艳', 'http://127.0.0.1:3000/img/avatar/avatar5.jpg', '2018-09-01 16:32:28', '\"这个手机不错,好看!\"', 10),
(43, '钟无艳', 'http://127.0.0.1:3000/img/avatar/avatar5.jpg', '2018-09-16 18:52:34', '\"zheshi di\"', 14);

-- --------------------------------------------------------

--
-- 表的结构 `imagelist`
--

CREATE TABLE `imagelist` (
  `id` int(11) NOT NULL,
  `img_url` varchar(248) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `imagelist`
--

INSERT INTO `imagelist` (`id`, `img_url`, `title`) VALUES
(1, 'http://127.0.0.1:3000/img/index/banner1.jpg\r\n', 'phone'),
(2, 'http://127.0.0.1:3000/img/index/banner2.jpg\r\n', 'phone'),
(3, 'http://127.0.0.1:3000/img/index/banner3.jpg', 'phone'),
(4, 'http://127.0.0.1:3000/img/index/banner4.jpg', 'phone');

-- --------------------------------------------------------

--
-- 表的结构 `newslist`
--

CREATE TABLE `newslist` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `newslist`
--

INSERT INTO `newslist` (`id`, `title`, `add_time`, `click`, `img_url`, `content`) VALUES
(1, '【NEX评测】我有你无,就靠这三点,vivo  NEX就敢超越', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news1.png', '\r\nNEX在vivo的历史上有着里程碑的意义，这是vivo第一款量产且做到真正意义上最接近全面屏的手机，屏幕发声、屏幕指纹等，都是vivo的送出的惊叹号。\r\nvivo NEX后盖是一块曲面玻璃，vivo也适时的抓住了用户消费者的心理。及时的大面积推广玻璃材质的后盖。将自家优秀的玻璃工艺广为传播。'),
(2, '【NEX评测】与 vivo NEX旗舰版的美好相遇', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news2.png', '\r\nNEX在vivo的历史上有着里程碑的意义，这是vivo第一款量产且做到真正意义上最接近全面屏的手机，屏幕发声、屏幕指纹等，都是vivo的送出的惊叹号。'),
(3, 'NEX全面屏手机与时尚结合之美', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news3.png', '\r\nvivo NEX后盖是一块曲面玻璃，vivo也适时的抓住了用户消费者的心理。及时的大面积推广玻璃材质的后盖。将自家优秀的玻璃工艺广为传播。'),
(4, '【NEX评测】我有你无,就靠这三点,vivo  NEX就敢超越', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news4.png', '\r\nNEX在vivo的历史上有着里程碑的意义，这是vivo第一款量产且做到真正意义上最接近全面屏的手机，屏幕发声、屏幕指纹等，都是vivo的送出的惊叹号。\r\nvivo NEX后盖是一块曲面玻璃，vivo也适时的抓住了用户消费者的心理。及时的大面积推广玻璃材质的后盖。将自家优秀的玻璃工艺广为传播。'),
(5, '【NEX评测】与 vivo NEX旗舰版的美好相遇', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news7.png', '\r\nNEX在vivo的历史上有着里程碑的意义，这是vivo第一款量产且做到真正意义上最接近全面屏的手机，屏幕发声、屏幕指纹等，都是vivo的送出的惊叹号。'),
(6, 'NEX全面屏手机与时尚结合之美', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news6.png', '\r\nvivo NEX后盖是一块曲面玻璃，vivo也适时的抓住了用户消费者的心理。及时的大面积推广玻璃材质的后盖。将自家优秀的玻璃工艺广为传播。'),
(7, 'NEX全面屏手机与时尚结合之美', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news8.png', '\r\nvivo NEX后盖是一块曲面玻璃，vivo也适时的抓住了用户消费者的心理。及时的大面积推广玻璃材质的后盖。将自家优秀的玻璃工艺广为传播。'),
(8, 'NEX全面屏手机与时尚结合之美', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news6.png', '\r\nvivo NEX后盖是一块曲面玻璃，vivo也适时的抓住了用户消费者的心理。及时的大面积推广玻璃材质的后盖。将自家优秀的玻璃工艺广为传播。'),
(9, '【NEX评测】我有你无,就靠这三点,vivo  NEX就敢超越', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news1.png', '\r\nNEX在vivo的历史上有着里程碑的意义，这是vivo第一款量产且做到真正意义上最接近全面屏的手机，屏幕发声、屏幕指纹等，都是vivo的送出的惊叹号。\r\nvivo NEX后盖是一块曲面玻璃，vivo也适时的抓住了用户消费者的心理。及时的大面积推广玻璃材质的后盖。将自家优秀的玻璃工艺广为传播。'),
(10, '【NEX评测】与 vivo NEX旗舰版的美好相遇', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news2.png', '\r\nNEX在vivo的历史上有着里程碑的意义，这是vivo第一款量产且做到真正意义上最接近全面屏的手机，屏幕发声、屏幕指纹等，都是vivo的送出的惊叹号。'),
(11, '【NEX评测】我有你无,就靠这三点,vivo  NEX就敢超越', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news4.png', '\r\nNEX在vivo的历史上有着里程碑的意义，这是vivo第一款量产且做到真正意义上最接近全面屏的手机，屏幕发声、屏幕指纹等，都是vivo的送出的惊叹号。\r\nvivo NEX后盖是一块曲面玻璃，vivo也适时的抓住了用户消费者的心理。及时的大面积推广玻璃材质的后盖。将自家优秀的玻璃工艺广为传播。'),
(12, 'NEX全面屏手机与时尚结合之美', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news3.png', '\r\nvivo NEX后盖是一块曲面玻璃，vivo也适时的抓住了用户消费者的心理。及时的大面积推广玻璃材质的后盖。将自家优秀的玻璃工艺广为传播。'),
(13, '【NEX评测】与 vivo NEX旗舰版的美好相遇', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news7.png', '\r\nNEX在vivo的历史上有着里程碑的意义，这是vivo第一款量产且做到真正意义上最接近全面屏的手机，屏幕发声、屏幕指纹等，都是vivo的送出的惊叹号。'),
(14, 'NEX全面屏手机与时尚结合之美', '2018-08-30 07:58:01', 0, 'http://127.0.0.1:3000/img/avatar/news8.png', '\r\nvivo NEX后盖是一块曲面玻璃，vivo也适时的抓住了用户消费者的心理。及时的大面积推广玻璃材质的后盖。将自家优秀的玻璃工艺广为传播。');

-- --------------------------------------------------------

--
-- 表的结构 `photolist`
--

CREATE TABLE `photolist` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `photolist`
--

INSERT INTO `photolist` (`id`, `title`, `path`) VALUES
(1, '九月签到赢好礼,礼至中秋!', 'http://127.0.0.1:3000/img/product/md/photo1.jpg'),
(2, '炎热8月送清凉,抽奖赢vivo NES手机', 'http://127.0.0.1:3000/img/product/md/photo3.jpg'),
(3, '照亮你的美,柔光镜头等你来体验', 'http://127.0.0.1:3000/img/product/md/photo4.jpg'),
(4, '炎热8月送清凉,抽奖赢vivo NES手机\r\n', 'http://127.0.0.1:3000/img/product/md/photo3.jpg'),
(5, '九月签到赢好礼,礼至中秋!\r\n', 'http://127.0.0.1:3000/img/product/md/photo1.jpg'),
(6, 'vivo X23新品发布会粉丝门票攻略\r\n', 'http://127.0.0.1:3000/img/product/md/photo2.jpg'),
(7, '照亮你的美,柔光镜头等你来体验', 'http://127.0.0.1:3000/img/product/md/photo4.jpg'),
(8, '清凉一夏', 'http://127.0.0.1:3000/img/product/md/photo3.jpg'),
(9, 'vivo X23新品发布会粉丝门票攻略', 'http://127.0.0.1:3000/img/product/md/photo2.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `productlist`
--

CREATE TABLE `productlist` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price_old` decimal(10,2) DEFAULT NULL,
  `price_new` decimal(10,2) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `productlist`
--

INSERT INTO `productlist` (`id`, `title`, `price_old`, `price_new`, `lname`, `stock`, `img_url`) VALUES
(1, 'NEX旗舰版', '9000.00', '4890.00', '科技期间,骁龙845处理器', 45, 'http://127.0.0.1:3000/img/product/vivo/1.png'),
(2, 'X21屏幕指纹版', '4498.00', '4198.00', '直降300,酷炫黑科技', 22, 'http://127.0.0.1:3000/img/product/vivo/3.png'),
(3, 'X21Plus  全网通', '2798.00', '2298.00', 'vivoX20', 105, 'http://127.0.0.1:3000/img/product/vivo/2.png'),
(4, 'Z1 4GB+64GB', '8700.00', '20.00', '直降200,限时赠好礼', 56, 'http://127.0.0.1:3000/img/product/vivo/4.png\r\n'),
(5, 'NEX全面屏 8GB+128GB', '6600.00', '9210.00', '6.5英寸全面屏', 56, 'http://127.0.0.1:3000/img/product/vivo/5.png'),
(6, 'Z21全面屏4GB+64GB\r\n', '2300.00', '2200.00', '直降100', 100, 'http://127.0.0.1:3000/img/product/vivo/7.png'),
(7, 'X20', '4500.00', '4500.00', '全面屏解锁', 32, 'http://127.0.0.1:3000/img/product/vivo/6.png'),
(8, 'vivoX5 pro', '4589.00', '5699.00', '只属于你的情侣机', 1000, 'http://127.0.0.1:3000/img/product/vivo/8.png'),
(9, 'vivoX5 pro旗舰版', '4589.00', '5699.00', '专属订制', 1000, 'http://127.0.0.1:3000/img/product/vivo/9.png'),
(10, 'Z21全面屏4GB+64GB\r\n', '2300.00', '2200.00', '直降100', 100, 'http://127.0.0.1:3000/img/product/vivo/7.png'),
(11, 'X21屏幕指纹版', '4498.00', '4198.00', '直降300,酷炫黑科技', 22, 'http://127.0.0.1:3000/img/product/vivo/3.png'),
(12, 'X21屏幕指纹版', '4498.00', '4198.00', '直降300,酷炫黑科技', 22, 'http://127.0.0.1:3000/img/product/vivo/3.png'),
(13, 'X21屏幕指纹版', '4498.00', '4198.00', '直降300,酷炫黑科技', 22, 'http://127.0.0.1:3000/img/product/vivo/3.png');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`uid`, `uname`, `upwd`) VALUES
(1, 'tom', '202cb962ac59075b964b07152d234b70'),
(2, 'jerry', '202cb962ac59075b964b07152d234b70'),
(3, 'jack', '202cb962ac59075b964b07152d234b70'),
(4, 'mary', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartlist`
--
ALTER TABLE `cartlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentlist`
--
ALTER TABLE `commentlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imagelist`
--
ALTER TABLE `imagelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslist`
--
ALTER TABLE `newslist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photolist`
--
ALTER TABLE `photolist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productlist`
--
ALTER TABLE `productlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cartlist`
--
ALTER TABLE `cartlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `commentlist`
--
ALTER TABLE `commentlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用表AUTO_INCREMENT `imagelist`
--
ALTER TABLE `imagelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `newslist`
--
ALTER TABLE `newslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `photolist`
--
ALTER TABLE `photolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `productlist`
--
ALTER TABLE `productlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
