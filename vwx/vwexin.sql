-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 58.87.107.202
-- Generation Time: 2018-11-05 14:44:33
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
-- Database: `vwexin`
--

-- --------------------------------------------------------

--
-- 表的结构 `wx_classdoc`
--

CREATE TABLE `wx_classdoc` (
  `cid` int(32) NOT NULL,
  `cimage` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `ctitle` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `cdetail` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `cclass` int(32) NOT NULL,
  `liulan` int(11) NOT NULL,
  `time` varchar(50) CHARACTER SET utf8 NOT NULL,
  `clist` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `wx_classdoc`
--

INSERT INTO `wx_classdoc` (`cid`, `cimage`, `ctitle`, `cdetail`, `cclass`, `liulan`, `time`, `clist`) VALUES
(1, 'https://aimeiht.rrcj123.com/img/index/78.png', 'jQuery教程', 'jQuery是一个快速、简洁的JavaScript框架，是继Prototype之后又一个优秀的JavaScript代码库（或JavaScript框架）。jQuery设计的宗旨是“write Less，Do More”，即倡导写更少的代码，做更多的事情。它封装JavaScript常用的功能代码，提供一种简便的JavaScript设计模式，优化HTML文档操作、事件处理、动画设计和Ajax交互.', 1, 145, '1天前', 0),
(2, 'https://aimeiht.rrcj123.com/img/index/781.png', 'Python零起点', 'Python是一种计算机程序设计语言。是一种动态的、面向对象的脚本语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。', 1, 325, '2天前', 0),
(3, 'https://aimeiht.rrcj123.com/img/index/782.png', 'PHP教程', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：超文本预处理器 ,是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。PHP 独特的语法混合了C、Java、Perl以及PHP自创的语法。它可以比CGI或者Perl更快速地执行动态网页。用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行', 1, 667, '1天前', 0),
(4, 'https://aimeiht.rrcj123.com/img/index/33.png', 'Android零起点教程', 'Android一词的本义指“机器人”，同时也是Google于2007年11月5日宣布的基于Linux平台的开源手机操作系统的名称，该平台由操作系统、中间件、用户界面和应用软件组成。', 3, 422, '3天前', 0),
(5, 'https://aimeiht.rrcj123.com/img/index/40.jpg', 'React进阶之路', '《React进阶之路》详细介绍了React技术栈涉及的主要技术。本书分为基础篇、进阶篇和实战篇三部分。基础篇主要介绍React的基本用法，包括React 16的新特性；进阶篇深入讲解组件state、虚拟DOM、高阶组件等React中的重要概念，同时对初学者容易困惑的知识点做了介绍；实战篇介绍React Router、Redux和MobX 3个React技术栈的重要成员，并通过实战项目讲解这些技术如何和React结合使用。', 2, 157, '13天前', 0),
(6, 'https://aimeiht.rrcj123.com/img/index/41.jpg', '犀牛书', 'JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称为JavaScript引擎，为浏览器的一部分，广泛用于客户端的脚本语言，最早是在HTML（标准通用标记语言下的一个应用）网页上使用，用来给HTML网页增加动态功能。', 2, 224, '7天前', 0),
(7, 'https://aimeiht.rrcj123.com/img/index/42.png', 'JavaScript', 'JavaScript一种直译式脚本语言，是一种动态类型、弱类型、基于原型的语言，内置支持类型。它的解释器被称为JavaScript引擎，为浏览器的一部分，广泛用于客户端的脚本语言，最早是在HTML（标准通用标记语言下的一个应用）网页上使用，用来给HTML网页增加动态功能。', 2, 389, '6天前', 2),
(8, 'https://aimeiht.rrcj123.com/img/index/44.jpg', 'Vue.js', 'Vue.js（读音 /vjuː/, 类似于 view）是一个构建数据驱动的 web 界面的渐进式框架。Vue.js 的目标是通过尽可能简单的 API 实现响应的数据绑定和组合的视图组件。它不仅易于上手，还便于与第三方库或既有项目整合。', 2, 110, '1天前', 0),
(9, 'https://aimeiht.rrcj123.com/img/index/45.jpg', 'CSS教程', '层叠样式表(英文全称：Cascading Style Sheets)是一种用来表现HTML（标准通用标记语言的一个应用）或XML（标准通用标记语言的一个子集）等文件样式的计算机语言。CSS不仅可以静态地修饰网页，还可以配合各种脚本语言动态地对网页各元素进行格式化。', 2, 832, '8天前', 1),
(10, 'https://aimeiht.rrcj123.com/img/index/50.jpg', 'C++教程', 'C++是C语言的继承，它既可以进行C语言的过程化程序设计，又可以进行以抽象数据类型为特点的基于对象的程序设计，还可以进行以继承和多态为特点的面向对象的程序设计。C++擅长面向对象程序设计的同时，还可以进行基于过程的程序设计，因而C++就适应的问题规模而论，大小由之。', 3, 489, '9天前', 0),
(11, 'https://aimeiht.rrcj123.com/img/index/51.png', 'Not Only SQL', '结构化查询语言(Structured Query Language)简称SQL(发音：/ˈes kjuː ˈel/ \"S-Q-L\")，是一种特殊目的的编程语言，是一种数据库查询和程序设计语言，用于存取数据以及查询、更新和管理关系数据库系统；同时也是数据库脚本文件的扩展名。', 3, 233, '3天前', 0),
(12, 'https://aimeiht.rrcj123.com/img/index/52.png', 'SQLite', '结构化查询语言(Structured Query Language)简称SQL(发音：/ˈes kjuː ˈel/ \"S-Q-L\")，是一种特殊目的的编程语言，是一种数据库查询和程序设计语言，用于存取数据以及查询、更新和管理关系数据库系统；同时也是数据库脚本文件的扩展名。', 5, 456, '1天前', 0),
(13, 'https://aimeiht.rrcj123.com/img/index/80.png', 'Android', 'Android一词的本义指“机器人”，同时也是Google于2007年11月5日宣布的基于Linux平台的开源手机操作系统的名称，该平台由操作系统、中间件、用户界面和应用软件组成。', 5, 752, '2天前', 0),
(14, 'https://aimeiht.rrcj123.com/img/index/81.png', 'Spring', 'Spring是一个开放源代码的设计层面框架，他解决的是业务逻辑层和其他各层的松耦合问题，因此它将面向接口的编程思想贯穿整个系统应用。Spring是于2003 年兴起的一个轻量级的Java 开发框架，由Rod Johnson创建。简单来说，Spring是一个分层的JavaSE/EE full-stack(一站式) 轻量级开源框架。', 5, 159, '3天前', 0),
(15, 'https://aimeiht.rrcj123.com/img/index/83.png', 'Python零起点教程', 'Python是一种计算机程序设计语言。是一种动态的、面向对象的脚本语言，最初被设计用于编写自动化脚本(shell)，随着版本的不断更新和语言新功能的添加，越来越多被用于独立的、大型项目的开发。', 5, 143, '12天前', 0),
(16, 'https://aimeiht.rrcj123.com/img/index/84.png', 'Yii Framework', '通过一个简单的命令行工具 yiic 可以快速创建一个web应用程序的代码框架,开发者可以在生成的代码框架基础上添加业务逻辑,以快速完成应用程序的开发.该版本包含超过90个新特性、增强和bug修复,最重要的有:RESTful 的URL支持、查询缓存、基于类的Actions参数绑定、无缝的客户端验证、传递参数到关系命名scope、在 HAS_MANY 和 HAS_ONE 中使用 through、数据库移植的事务处理以及支持注册和使用自定义脚本包等等.', 5, 369, '15天前', 0),
(17, 'https://aimeiht.rrcj123.com/img/index/90.png', '小程序', '小程序是一种不需要下载安装即可使用的应用，它实现了应用“触手可及”的梦想，用户扫一扫或者搜一下即可打开应用。也体现了“用完即走”的理念，用户不用关心是否安装太多应用的问题。应用将无处不在，随时可用，但又无需安装卸载。', 4, 330, '10天前', 0),
(18, 'https://aimeiht.rrcj123.com/img/index/91.jpg', '迈向Angular2', 'AngularJS [1]  诞生于2009年，由Misko Hevery 等人创建，后为Google所收购。是一款优秀的前端JS框架，已经被用于Google的多款产品当中。AngularJS有着诸多特性，最为核心的是：MVW（Model-View-Whatever）、模块化、自动化双向数据绑定、语义化标签、依赖注入等等。', 3, 810, '2天前', 0),
(19, 'https://aimeiht.rrcj123.com/img/index/92.png', 'java', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程', 4, 230, '11天前', 0),
(20, 'https://aimeiht.rrcj123.com/img/index/94.png', 'HTML中文教程', 'html教程介绍 HTML的翻译成中文叫做超文本标记语言，是用来制作网页的标记语言。HTML教程整理了HTML语言基础教程，HTML高级教程，并提供HTML标签以供参考，是你学习HTML教程的最佳选择,帮助大家以最快的速度学会HTML语言。 v1.0更新： 增加机锋渠道', 4, 465, '13天前', 0),
(21, 'https://aimeiht.rrcj123.com/img/index/95.png', 'PHP', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。PHP 独特的语法混合了C、Java、Perl以及PHP自创的语法。它可以比CGI或者Perl更快速地执行动态网页。用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执', 4, 430, '1天前', 0),
(22, 'https://aimeiht.rrcj123.com/img/index/10.jpg', 'html知多少', '万维网的核心语言、标准通用标记语言下的一个应用超文本标记语言（HTML）的第五次重大修改,HTML5的设计目的是为了在移动设备上支持多媒体。新的语法特征被引进以支持这一点，如video、audio和canvas 标记。HTML5还引进了新的功能，可以真正改变用户与文档的交互方式', 0, 732, '4天前', 1),
(23, 'https://aimeiht.rrcj123.com/img/index/11.png', 'html', '万维网的核心语言、标准通用标记语言下的一个应用超文本标记语言（HTML）的第五次重大修改,HTML5的设计目的是为了在移动设备上支持多媒体。新的语法特征被引进以支持这一点，如video、audio和canvas 标记。HTML5还引进了新的功能，可以真正改变用户与文档的交互方式', 0, 445, '3天前', 1),
(24, 'https://aimeiht.rrcj123.com/img/index/12.jpg', 'HTML入门', '万维网的核心语言、标准通用标记语言下的一个应用超文本标记语言（HTML）的第五次重大修改,HTML5的设计目的是为了在移动设备上支持多媒体。新的语法特征被引进以支持这一点，如video、audio和canvas 标记。HTML5还引进了新的功能，可以真正改变用户与文档的交互方式', 0, 548, '8天前', 1),
(25, 'https://aimeiht.rrcj123.com/img/index/13.jpg', 'css3你不知道的', 'CSS演进的一个主要变化就是W3C决定将CSS3分成一系列模块。浏览器厂商按CSS节奏快速创新，因此通过采用模块方法，CSS3规范里的元素能以不同速度向前发展，因为不同的浏览器厂商只支持给定特性。但不同浏览器在不同时问支持不同特性，这也让跨浏览器开发变得复杂', 0, 659, '7天前', 1),
(26, 'https://aimeiht.rrcj123.com/img/index/14.jpg', 'html5新特性', '万维网的核心语言、标准通用标记语言下的一个应用超文本标记语言（HTML）的第五次重大修改,HTML5的设计目的是为了在移动设备上支持多媒体。新的语法特征被引进以支持这一点，如video、audio和canvas 标记。HTML5还引进了新的功能，可以真正改变用户与文档的交互方式', 0, 358, '1天前', 1),
(27, 'https://aimeiht.rrcj123.com/img/index/15.jpg', 'css3新特性', 'CSS演进的一个主要变化就是W3C决定将CSS3分成一系列模块。浏览器厂商按CSS节奏快速创新，因此通过采用模块方法，CSS3规范里的元素能以不同速度向前发展，因为不同的浏览器厂商只支持给定特性。但不同浏览器在不同时问支持不同特性，这也让跨浏览器开发变得复杂', 0, 567, '3天前', 1);

-- --------------------------------------------------------

--
-- 表的结构 `wx_comment`
--

CREATE TABLE `wx_comment` (
  `coid` int(32) NOT NULL,
  `coimg` varchar(255) DEFAULT NULL,
  `cohead` varchar(255) DEFAULT 'https://aimeiht.rrcj123.com/img/comment/0001.jpg',
  `coproblem` varchar(255) DEFAULT NULL,
  `cotitle` varchar(50) DEFAULT '云档小白',
  `coform` varchar(50) DEFAULT NULL,
  `cotime` datetime DEFAULT NULL,
  `coname` varchar(50) DEFAULT '匿名用户',
  `cogood` int(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wx_comment`
--

INSERT INTO `wx_comment` (`coid`, `coimg`, `cohead`, `coproblem`, `cotitle`, `coform`, `cotime`, `coname`, `cogood`) VALUES
(1, 'https://aimeiht.rrcj123.com/img/comment/400.jpg', 'https://aimeiht.rrcj123.com/img/comment/1.jpg', '新版本来了,招募作者,请联系我', '云档小白', 'jQuery叫教程', '2018-10-04 00:00:00', '清风徐来', 2),
(2, NULL, 'https://aimeiht.rrcj123.com/img/comment/2.jpg', '对WEB标准以及W3C的理解与认识', '云档小白', 'CSS权威指南', '2018-10-24 00:00:00', '痴心错付', 1),
(3, NULL, 'https://aimeiht.rrcj123.com/img/comment/3.jpg', 'xhtml和html有什么区别', '云档小白', 'HTML+CSS网页前端课程', '2018-10-24 00:00:00', '你困住我，年深月久', 3),
(4, NULL, 'https://aimeiht.rrcj123.com/img/comment/4.jpg', '对web前端开发的认识和理解,这个要怎么回答', '云档小白', 'Pro HTML5 Programming', '2018-10-24 00:00:00', '独孤求败', 2),
(5, NULL, 'https://aimeiht.rrcj123.com/img/comment/5.jpg', 'web前端开发怎么理解微信小程序', '云档小白', 'HTML5 Up and Running', '2018-10-24 00:00:00', '久念你i', 0),
(6, NULL, 'https://aimeiht.rrcj123.com/img/comment/6.jpg', '说说你对WEB前端的认识？你认为WEB前端的前景怎么样？', '云档小白', 'The essential guide to HTML5 ', '2018-10-24 00:00:00', '天佑爱人', 0),
(7, NULL, 'https://aimeiht.rrcj123.com/img/comment/7.jpg', 'Web前端岗位面试题有哪些', '云档小白', 'HTML5 for Dummies ', '2018-10-24 00:00:00', '像雾像雨又像风', 0),
(8, NULL, 'https://aimeiht.rrcj123.com/img/comment/8.jpg', '严格模式与混杂模式-如何触发这两种模式，区分它们有何意义', '云档小白', 'HTML5 Canvas', '2018-10-24 00:00:00', '酒醉三分醒', 1),
(9, NULL, 'https://aimeiht.rrcj123.com/img/comment/9.gif', '为什么不能复制分享文档', '云档小白', '杰出产品经理 ', '2018-10-24 00:00:00', 'bibi', 0),
(10, NULL, 'https://aimeiht.rrcj123.com/img/comment/10.jpg', '哈哈哈哈', '云档小白', 'Vue 2.0', '2018-10-24 00:00:00', '太阳', 0),
(11, NULL, 'https://aimeiht.rrcj123.com/img/comment/11.jpg', '厉害了我的哥', '云档小白', 'HTML5 Canvas', '2018-10-24 00:00:00', '薛定谔的猫', 0),
(12, NULL, 'https://aimeiht.rrcj123.com/img/comment/12.jpg', '关注我,看我的新程序', '云档小白', '微信小程序官方文档 ', '2018-10-24 00:00:00', '一点一点', 0),
(13, NULL, 'https://aimeiht.rrcj123.com/img/comment/13.jpg', 'Web前端岗位面试题有哪些', '云档小白', 'HTML5 for Dummies ', '2018-10-24 00:00:00', '像雾像雨又像风', 0),
(14, NULL, 'https://aimeiht.rrcj123.com/img/comment/14.jpg', '严格模式与混杂模式-如何触发这两种模式，区分它们有何意义', '云档小白', 'HTML5 Canvas', '2018-10-27 00:00:00', '酒醉三分醒', 0),
(15, NULL, 'https://aimeiht.rrcj123.com/img/comment/110.jpg', '说说你对WEB前端的认识？你认为WEB前端的前景怎么样？', '云档小白', 'The essential guide to HTML5 ', '2018-10-27 00:00:00', '天佑爱人', 0),
(16, NULL, 'https://aimeiht.rrcj123.com/img/comment/111.jpg', 'Web前端岗位面试题有哪些', '云档小白', 'HTML5 for Dummies ', '2018-10-27 00:00:00', '像雾像雨又像风', 0),
(17, NULL, 'https://aimeiht.rrcj123.com/img/comment/112.jpg', '严格模式与混杂模式-如何触发这两种模式，区分它们有何意义', '云档小白', 'HTML5 Canvas', '2018-10-27 00:00:00', '酒醉三分醒', 0),
(18, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'aaa', '云档小白', 'aaa', '2018-10-31 22:10:33', '匿名用户', 0),
(19, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'wfefer', '云档小白', 'edffr', '2018-10-31 22:11:51', '匿名用户', 0),
(20, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sss', '云档小白', 'sss', '2018-10-31 22:12:30', '匿名用户', 0),
(21, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'GFDGF', '云档小白', 'SDFSD', '2018-10-31 22:14:15', '匿名用户', 0),
(22, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'dsfdsf', '云档小白', 'fdfdsf', '2018-10-31 22:20:53', '匿名用户', 0),
(23, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'fdsfdsf', '云档小白', 'fdfd', '2018-10-31 22:24:39', '匿名用户', 0),
(24, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'dsfds', '云档小白', 'dfsds', '2018-10-31 22:26:48', '匿名用户', 0),
(25, 'https://aimeiht.rrcj123.com/upload/1540996210992_615_multer.jpeg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'tertewrt', '云档小白', 'retre', '2018-10-31 22:30:11', '匿名用户', 0),
(26, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '发过的', '云档小白', 'html', '2018-10-29 20:47:14', '匿名用户', 0),
(27, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '疯狂的设计费', '云档小白', 'html', '2018-10-29 20:48:08', '匿名用户', 0),
(28, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'jhdsfk ', '云档小白', 'fjdgh ', '2018-10-29 20:50:43', '匿名用户', 0),
(29, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'html5有什么新特性', '云档小白', 'html', '2018-10-29 21:32:26', '匿名用户', 0),
(30, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '梵蒂冈', '云档小白', 'css', '2018-10-29 21:36:05', '匿名用户', 0),
(31, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '浮点数', '云档小白', 'html', '2018-10-29 21:43:53', '匿名用户', 0),
(32, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '123456', '云档小白', '123456', '2018-10-29 21:43:53', '匿名用户', 0),
(33, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'gsdgffds', '云档小白', 'dfsggdsg', '2018-10-30 11:39:04', '匿名用户', 0),
(34, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'tgrieui', '云档小白', '1456545', '2018-10-30 11:39:06', '匿名用户', 0),
(35, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'dfssg', '云档小白', 'dfgsdgfdsgfdgfdg', '2018-10-30 19:32:16', '匿名用户', 0),
(36, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'gfdgfdgf', '云档小白', 'gdfsgfdsgf', '2018-10-30 19:35:56', '匿名用户', 0),
(37, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'gdfsgffdgs', '云档小白', 'gfdsfgsdg', '2018-10-30 19:41:46', '匿名用户', 0),
(38, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '第三方割发代首', '云档小白', '发过的山东省个', '2018-10-31 17:39:30', '匿名用户', 0),
(39, 'https://aimeiht.rrcj123.com/upload/1540979126372_670_multer.PNG', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 17:45:26', '匿名用户', 0),
(40, 'https://aimeiht.rrcj123.com/upload/1540979468333_929_multer.jpg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 17:51:08', '匿名用户', 0),
(41, 'https://aimeiht.rrcj123.com/upload/1540979811955_340_multer.PNG', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 17:56:51', '匿名用户', 0),
(42, 'https://aimeiht.rrcj123.com/upload/1540979811939_352_multer.gif', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 17:56:51', '匿名用户', 0),
(43, 'https://aimeiht.rrcj123.com/upload/1540980348621_187_multer.png', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 18:05:48', '匿名用户', 0),
(44, 'https://aimeiht.rrcj123.com/upload/1540980667237_588_multer.png', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 18:11:07', '匿名用户', 0),
(45, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 19:27:36', '匿名用户', 0),
(46, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 19:31:00', '匿名用户', 0),
(47, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 19:32:14', '匿名用户', 0),
(48, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 19:32:51', '匿名用户', 0),
(49, 'https://aimeiht.rrcj123.com/upload/1540985852794_582_multer.png', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 19:37:32', '匿名用户', 0),
(50, 'https://aimeiht.rrcj123.com/upload/1540986075133_519_multer.jpg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 19:41:15', '匿名用户', 0),
(51, 'https://aimeiht.rrcj123.com/upload/1540986135174_957_multer.PNG', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 19:42:15', '匿名用户', 0),
(52, 'https://aimeiht.rrcj123.com/upload/1540986288412_943_multer.jpg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 19:44:48', '匿名用户', 0),
(53, 'https://aimeiht.rrcj123.com/upload/1540986440492_643_multer.gif', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 19:47:20', '匿名用户', 0),
(54, 'https://aimeiht.rrcj123.com/upload/1540986884842_501_multer.jpg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 19:54:44', '匿名用户', 0),
(55, 'https://aimeiht.rrcj123.com/upload/1540987776820_512_multer.gif', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 20:09:36', '匿名用户', 0),
(56, 'https://aimeiht.rrcj123.com/upload/1540988558356_459_multer.gif', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 20:22:38', '匿名用户', 0),
(57, 'https://aimeiht.rrcj123.com/upload/1540988679366_177_multer.gif', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 20:24:39', '匿名用户', 0),
(58, 'https://aimeiht.rrcj123.com/upload/1540988852029_177_multer.jpg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 20:27:32', '匿名用户', 0),
(59, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'dfg', '云档小白', 'dgf', '2018-10-31 21:17:11', '匿名用户', 0),
(60, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sdfsdf', '云档小白', 'sdfsd', '2018-10-31 21:19:48', '匿名用户', 0),
(61, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sdfdsf', '云档小白', 'sdfsdf', '2018-10-31 21:27:43', '匿名用户', 0),
(62, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'dfgdf', '云档小白', 'dfg', '2018-10-31 21:29:11', '匿名用户', 0),
(63, 'https://aimeiht.rrcj123.com/upload/1540992791475_985_multer.gif', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'dfgddddd', '云档小白', 'dfgdfg', '2018-10-31 21:33:11', '匿名用户', 0),
(64, 'https://aimeiht.rrcj123.com/upload/1540992893125_328_multer.gif', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sdfsdfsdf', '云档小白', 'fdsfdsdfs', '2018-10-31 21:34:53', '匿名用户', 0),
(65, 'https://aimeiht.rrcj123.com/upload/1540993053079_610_multer.jpg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sgsfdgsdfg', '云档小白', 'gsdgsdg', '2018-10-31 21:37:33', '匿名用户', 0),
(66, 'https://aimeiht.rrcj123.com/upload/1540993114228_258_multer.gif', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sgdsgsdg', '云档小白', 'gdsg', '2018-10-31 21:38:34', '匿名用户', 0),
(67, 'https://aimeiht.rrcj123.com/upload/1540993225847_724_multer.jpg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sdfsdfsdf', '云档小白', 'sdfsdfsdf', '2018-10-31 21:40:25', '匿名用户', 0),
(68, 'https://aimeiht.rrcj123.com/upload/1540993420286_137_multer.jpg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sdffffffffffff', '云档小白', 'sdfsdf', '2018-10-31 21:43:40', '匿名用户', 0),
(69, 'https://aimeiht.rrcj123.com/upload/1540993420286_137_multer.jpg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 21:45:26', '匿名用户', 0),
(70, 'https://aimeiht.rrcj123.com/upload/1540993420286_137_multer.jpg', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', NULL, '云档小白', NULL, '2018-10-31 21:46:38', '匿名用户', 0),
(71, 'https://aimeiht.rrcj123.com/upload/1540993639165_750_multer.gif', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sdfsdf', '云档小白', 'sdfsdf', '2018-10-31 21:47:19', '匿名用户', 0),
(72, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sfdsdf', '云档小白', 'sdfsd', '2018-10-31 21:49:39', '匿名用户', 0),
(73, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sdfsdfsd', '云档小白', 'sdfsdf', '2018-10-31 21:50:19', '匿名用户', 0),
(74, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'dfgggg', '云档小白', 'dfgddfg', '2018-10-31 21:52:28', '匿名用户', 0),
(75, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sss', '云档小白', 'sss', '2018-10-31 21:54:48', '匿名用户', 0),
(76, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'dddd', '云档小白', 'dddd', '2018-10-31 21:56:10', '匿名用户', 0),
(77, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'ssssss', '云档小白', 'sssss', '2018-10-31 21:56:57', '匿名用户', 0),
(78, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'aaaa', '云档小白', 'aaaaa', '2018-10-31 21:59:35', '匿名用户', 0),
(79, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'fdsfds', '云档小白', 'dsfd', '2018-10-31 22:01:07', '匿名用户', 0),
(80, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sdff', '云档小白', 'dfs', '2018-10-31 22:06:49', '匿名用户', 0),
(81, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sdfsdf', '云档小白', 'sdfsdf', '2018-10-31 22:07:59', '匿名用户', 0),
(82, NULL, 'https://aimeiht.rrcj123.com/img/comment/113.jpg', '时间戳', '云档小白', 'HTML5 Canvas', '2018-10-29 00:00:00', 'dadada', 4),
(83, NULL, 'https://aimeiht.rrcj123.com/img/comment/114.jpg', 'angular', '云档小白', 'HTML5 Canvas', '2018-10-29 00:00:00', '黑化肥发黑', 1),
(84, NULL, 'https://aimeiht.rrcj123.com/img/comment/115.jpg', '数据库怎么学啊', '云档小白', 'sql教程', '2018-10-29 00:00:00', '凤凰于飞', 2),
(85, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '2222222222222222', '云档小白', 'fdsfdsf2', '2018-11-02 14:29:59', '匿名用户', 0),
(86, NULL, 'https://aimeiht.rrcj123.com/img/comment/3.jpg', 'xhtml和html有什么区别', '云档小白', 'HTML+CSS网页前端课程', '2018-10-29 20:56:18', '你困住我，年深月久', 0),
(87, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'fdsfds', '云档小白', 'sdsd', '2018-11-02 11:02:01', '匿名用户', 0),
(88, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'dfsfdsfds', '云档小白', 'fdsfdsfdsf', '2018-11-02 11:06:53', '匿名用户', 0),
(89, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'gfdgfdsgfsdg', '云档小白', 'fkgjfdgfgddsg', '2018-11-02 11:11:33', '匿名用户', 0),
(90, 'https://aimeiht.rrcj123.com/upload/1541127186430_958_multer.gif', 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'sql怎么查询', '云档小白', 'sql', '2018-11-02 10:53:06', '匿名用户', 0),
(91, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '1111111111111111111111111111111', '云档小白', 'hgfgdsfdsfdsf', '2018-11-02 14:29:43', '匿名用户', 0),
(92, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '333333333333333333', '云档小白', 'dfdsfdsfds', '2018-11-02 14:31:04', '匿名用户', 0),
(93, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '佛挡杀佛的', '云档小白', '范德萨范德萨 ', '2018-11-02 14:19:36', '匿名用户', 0),
(94, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'g54fd5g45fd', '云档小白', '12121', '2018-11-02 14:23:52', '匿名用户', 0),
(95, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'lalalalallal', '云档小白', '啦啦啦', '2018-11-02 11:17:46', '匿名用户', 0),
(96, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', ';;a;a;;a;a;a;;a;a;a;a;ar', '云档小白', 'lalallalal', '2018-11-02 11:24:38', '匿名用户', 0),
(97, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'afasdfdasfdsafdasfdasfdsafdsafdasfd', '云档小白', 'dsfdsfdsfdsf', '2018-11-02 11:26:28', '匿名用户', 0),
(98, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'fkldsjfkds', '云档小白', 'jhfkds', '2018-11-02 11:33:01', '匿名用户', 0),
(99, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '撒范德萨范德萨', '云档小白', '范德萨范德萨', '2018-11-02 11:36:43', '匿名用户', 0),
(100, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'fdsafdsafdsafdsaf', '云档小白', 'fdsfdsfds', '2018-11-02 11:37:58', '匿名用户', 0),
(101, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'fdsfdsafdsa', '云档小白', 'dsfdsfds', '2018-11-02 11:38:25', '匿名用户', 0),
(102, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'qqqqqqqqqqqqqqqqqqqqqqqqqqq', '云档小白', 'jqqqqqqqqqqqqqqq', '2018-11-02 11:43:33', '匿名用户', 0),
(103, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '11111111111111111111', '云档小白', '1111111111111111111', '2018-11-02 11:45:39', '匿名用户', 0),
(104, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'fdsdsfdsfaaaaa', '云档小白', 'fdsfdsf', '2018-11-02 11:46:56', '匿名用户', 0),
(105, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '11111111111111111111', '云档小白', 'fdsfdsfdsf', '2018-11-02 11:48:53', '匿名用户', 0),
(106, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqq', '云档小白', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqq', '2018-11-02 11:49:13', '匿名用户', 0),
(107, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '22222222222222', '云档小白', '2222222222222222', '2018-11-02 11:51:02', '匿名用户', 0),
(108, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '33333333333', '云档小白', '333333333333', '2018-11-02 11:52:41', '匿名用户', 0),
(109, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '4444444444444', '云档小白', '44444444444444', '2018-11-02 11:54:58', '匿名用户', 0),
(110, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '5555555555', '云档小白', '555555555', '2018-11-02 11:57:49', '匿名用户', 0),
(111, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '6666666666666', '云档小白', '66666666666', '2018-11-02 11:58:52', '匿名用户', 0),
(112, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '77777777777777', '云档小白', '7777777777', '2018-11-02 12:02:59', '匿名用户', 0),
(113, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '888888888888', '云档小白', '8888888888', '2018-11-02 12:03:58', '匿名用户', 0),
(114, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '999999999999', '云档小白', '99999999999999', '2018-11-02 12:04:50', '匿名用户', 0),
(115, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '101101010', '云档小白', '101010', '2018-11-02 14:17:06', '匿名用户', 0),
(116, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '121212', '云档小白', '121212', '2018-11-02 14:18:11', '匿名用户', 0),
(117, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '4545454545', '云档小白', '4545455', '2018-11-02 14:19:36', '匿名用户', 0),
(118, NULL, 'https://aimeiht.rrcj123.com/img/comment/6.jpg', '说说你对WEB前端的认识？你认为WEB前端的前景怎么样？', '云档小白', 'The essential guide to HTML5 ', '2018-10-29 20:56:18', '天佑爱人', 0),
(119, NULL, 'https://aimeiht.rrcj123.com/img/comment/0001.jpg', '在数据库中表怎么进行连接', '云档小白', 'sql教程', '2018-11-02 11:16:21', '匿名用户', 0),
(120, NULL, 'https://aimeiht.rrcj123.com/img/comment/4.jpg', '对web前端开发的认识和理解,这个要怎么回答', '云档小白', 'Pro HTML5 Programming', '2018-10-29 20:56:18', '独孤求败◇', 0),
(121, NULL, 'https://aimeiht.rrcj123.com/img/comment/2.jpg', '对WEB标准以及W3C的理解与认识', '云档小白', 'CSS权威指南', '2018-10-29 20:56:18', '痴心错付', 0),
(122, NULL, 'https://aimeiht.rrcj123.com/img/comment/5.jpg', 'web前端开发怎么理解微信小程序', '云档小白', 'HTML5 Up and Running', '2018-10-29 20:56:18', '久念你i', 0);

-- --------------------------------------------------------

--
-- 表的结构 `wx_doclist`
--

CREATE TABLE `wx_doclist` (
  `did` int(32) NOT NULL,
  `dclass` int(32) NOT NULL,
  `dtitle` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `wx_doclist`
--

INSERT INTO `wx_doclist` (`did`, `dclass`, `dtitle`) VALUES
(1, 1, '重磅推荐'),
(2, 2, '前端'),
(3, 3, '后端'),
(4, 4, '书籍'),
(5, 5, '最近更新');

-- --------------------------------------------------------

--
-- 表的结构 `wx_imagelist`
--

CREATE TABLE `wx_imagelist` (
  `wid` int(32) NOT NULL,
  `wimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `wx_imagelist`
--

INSERT INTO `wx_imagelist` (`wid`, `wimage`) VALUES
(1, 'https://aimeiht.rrcj123.com/img/index/1.jpg'),
(2, 'https://aimeiht.rrcj123.com/img/index/2.jpg'),
(3, 'https://aimeiht.rrcj123.com/img/index/3.jpg'),
(4, 'https://aimeiht.rrcj123.com/img/index/4.jpg'),
(5, 'https://aimeiht.rrcj123.com/img/index/5.png'),
(6, 'https://aimeiht.rrcj123.com/img/index/6.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `wx_list`
--

CREATE TABLE `wx_list` (
  `lid` int(32) NOT NULL,
  `lname` varchar(32) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `wx_list`
--

INSERT INTO `wx_list` (`lid`, `lname`) VALUES
(1, '前端开发'),
(2, '后端开发'),
(3, '移动开发'),
(4, '数据库'),
(5, '云计算&大数据'),
(6, '服务器&运维'),
(7, 'UI设计');

-- --------------------------------------------------------

--
-- 表的结构 `wx_listbook`
--

CREATE TABLE `wx_listbook` (
  `lbid` int(32) NOT NULL,
  `lbimg` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `lbname` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `lbclass` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `wx_listbook`
--

INSERT INTO `wx_listbook` (`lbid`, `lbimg`, `lbname`, `lbclass`) VALUES
(1, 'https://aimeiht.rrcj123.com/img/icons/100.jpg', 'HTML/CSS', 1),
(2, 'https://aimeiht.rrcj123.com/img/icons/101.jpg', 'JavaScript', 1),
(3, 'https://aimeiht.rrcj123.com/img/icons/102.jpg', 'jQuery', 1),
(4, 'https://aimeiht.rrcj123.com/img/icons/103.jpg', 'HTML5', 1),
(5, 'https://aimeiht.rrcj123.com/img/icons/104.jpg', 'Node.js', 1),
(6, 'https://aimeiht.rrcj123.com/img/icons/105.jpg', 'AngularJS', 1),
(7, 'https://aimeiht.rrcj123.com/img/icons/106.jpg', 'WebApp', 1),
(8, 'https://aimeiht.rrcj123.com/img/icons/107.jpg', '前端工具', 1),
(9, 'https://aimeiht.rrcj123.com/img/icons/108.jpg', 'CSS3', 1),
(10, 'https://aimeiht.rrcj123.com/img/icons/109.jpg', 'Bootstrap', 1),
(11, 'https://aimeiht.rrcj123.com/img/icons/110.jpg', 'ReactJS', 1),
(12, 'https://aimeiht.rrcj123.com/img/icons/111.jpg', 'Vue.js', 1),
(13, 'https://aimeiht.rrcj123.com/img/icons/112.jpg', 'Sass/Less', 1),
(14, 'https://aimeiht.rrcj123.com/img/icons/113.jpg', '开发工具', 1),
(15, 'https://aimeiht.rrcj123.com/img/icons/200.jpg', '算法', 2),
(16, 'https://aimeiht.rrcj123.com/img/icons/201.jpg', 'PHP', 2),
(17, 'https://aimeiht.rrcj123.com/img/icons/202.jpg', 'Java', 2),
(18, 'https://aimeiht.rrcj123.com/img/icons/203.jpg', 'Python', 2),
(19, 'https://aimeiht.rrcj123.com/img/icons/204.jpg', 'C', 2),
(20, 'https://aimeiht.rrcj123.com/img/icons/205.jpg', 'C++', 2),
(21, 'https://aimeiht.rrcj123.com/img/icons/206.jpg', 'Go', 2),
(22, 'https://aimeiht.rrcj123.com/img/icons/207.jpg', 'C#', 2),
(23, 'https://aimeiht.rrcj123.com/img/icons/208.jpg', 'Ruby', 2),
(24, 'https://aimeiht.rrcj123.com/img/icons/300.jpg', 'Android', 3),
(25, 'https://aimeiht.rrcj123.com/img/icons/301.jpg', 'iOS', 3),
(26, 'https://aimeiht.rrcj123.com/img/icons/302.jpg', 'Unity 3D', 3),
(27, 'https://aimeiht.rrcj123.com/img/icons/400.jpg', 'MySQL', 4),
(28, 'https://aimeiht.rrcj123.com/img/icons/401.jpg', 'MongoDB', 4),
(29, 'https://aimeiht.rrcj123.com/img/icons/402.jpg', 'SQL Server', 4),
(30, 'https://aimeiht.rrcj123.com/img/icons/403.jpg', 'Redis', 4),
(31, 'https://aimeiht.rrcj123.com/img/icons/500.jpg', '大数据', 5),
(32, 'https://aimeiht.rrcj123.com/img/icons/600.jpg', 'Linux', 6),
(33, 'https://aimeiht.rrcj123.com/img/icons/601.jpg', '测试', 6),
(34, 'https://aimeiht.rrcj123.com/img/icons/602.jpg', 'Nginx', 6),
(35, 'https://aimeiht.rrcj123.com/img/icons/603.jpg', '优化', 6),
(36, 'https://aimeiht.rrcj123.com/img/icons/604.jpg', '容器', 6),
(37, 'https://aimeiht.rrcj123.com/img/icons/700.jpg', '设计基础', 7),
(38, 'https://aimeiht.rrcj123.com/img/icons/701.jpg', '设计工具', 7),
(39, 'https://aimeiht.rrcj123.com/img/icons/702.jpg', '动画动效', 7);

-- --------------------------------------------------------

--
-- 表的结构 `wx_reply`
--

CREATE TABLE `wx_reply` (
  `rid` int(32) NOT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `rcoid` int(32) DEFAULT NULL,
  `rname` varchar(50) DEFAULT '匿名用户',
  `rtime` datetime DEFAULT NULL,
  `rgood` int(50) DEFAULT '0',
  `rhead` varchar(255) DEFAULT 'https://aimeiht.rrcj123.com/img/comment/0002.jpg',
  `rtitle` varchar(32) CHARACTER SET utf8mb4 NOT NULL DEFAULT '云档小白'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wx_reply`
--

INSERT INTO `wx_reply` (`rid`, `reply`, `rcoid`, `rname`, `rtime`, `rgood`, `rhead`, `rtitle`) VALUES
(1, '老铁,可以的', 82, '相守共度白头', '2018-10-24 21:52:48', 2, 'https://aimeiht.rrcj123.com/img/comment/100.jpg', '云档小白'),
(2, '老铁,我给你发链接', 83, '末代恋人。', '2018-10-24 21:52:48', 3, 'https://aimeiht.rrcj123.com/img/comment/101.jpg', '云档小白'),
(3, '老铁,我给你资料', 83, '相思似海深', '2018-10-24 21:52:48', 3, 'https://aimeiht.rrcj123.com/img/comment/102.jpg', '云档小白'),
(4, '可以的', 119, '没有梦的客观', '2018-10-24 21:52:48', 0, 'https://aimeiht.rrcj123.com/img/comment/103.jpg', '云档小白'),
(5, '666', 120, '无力自拔', '2018-10-24 21:52:48', 3, 'https://aimeiht.rrcj123.com/img/comment/104.jpg', '云档小白'),
(6, '777', 122, '继承者们!', '2018-10-24 21:52:48', 0, 'https://aimeiht.rrcj123.com/img/comment/105.jpg', '云档小白'),
(7, '888', 120, '花心蝴蝶', '2018-10-24 21:52:48', 0, 'https://aimeiht.rrcj123.com/img/comment/106.jpg', '云档小白'),
(8, '999', 121, '红尘路上', '2018-10-24 21:52:48', 1, 'https://aimeiht.rrcj123.com/img/comment/107.jpg', '云档小白'),
(9, '555', 122, '谁与共岁', '2018-10-24 21:52:48', 4, 'https://aimeiht.rrcj123.com/img/comment/108.jpg', '云档小白'),
(10, '厉害厉害', 120, '无声胜喧言', '2018-10-24 21:52:48', 4, 'https://aimeiht.rrcj123.com/img/comment/109.jpg', '云档小白'),
(19, '发货单个', 120, '匿名用户', '2018-11-01 11:53:33', 2, 'https://aimeiht.rrcj123.com/img/comment/0002.jpg', '云档小白'),
(20, '福建四大行', 119, '匿名用户', '2018-11-01 11:54:25', 0, 'https://aimeiht.rrcj123.com/img/comment/0002.jpg', '云档小白'),
(21, 'g的法国人的', 118, '匿名用户', '2018-11-01 11:59:54', 2, 'https://aimeiht.rrcj123.com/img/comment/0002.jpg', '云档小白'),
(22, '=fjdskjfdsjfkds', 118, '匿名用户', '2018-11-02 10:52:15', 0, 'https://aimeiht.rrcj123.com/img/comment/0002.jpg', '云档小白'),
(23, 'grfdegfdgds', 117, '匿名用户', '2018-11-02 14:39:17', 0, 'https://aimeiht.rrcj123.com/img/comment/0002.jpg', '云档小白');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wx_classdoc`
--
ALTER TABLE `wx_classdoc`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `wx_comment`
--
ALTER TABLE `wx_comment`
  ADD PRIMARY KEY (`coid`);

--
-- Indexes for table `wx_doclist`
--
ALTER TABLE `wx_doclist`
  ADD UNIQUE KEY `did` (`did`);

--
-- Indexes for table `wx_imagelist`
--
ALTER TABLE `wx_imagelist`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `wx_list`
--
ALTER TABLE `wx_list`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `wx_listbook`
--
ALTER TABLE `wx_listbook`
  ADD PRIMARY KEY (`lbid`);

--
-- Indexes for table `wx_reply`
--
ALTER TABLE `wx_reply`
  ADD PRIMARY KEY (`rid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `wx_comment`
--
ALTER TABLE `wx_comment`
  MODIFY `coid` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- 使用表AUTO_INCREMENT `wx_reply`
--
ALTER TABLE `wx_reply`
  MODIFY `rid` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
