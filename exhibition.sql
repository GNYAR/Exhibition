-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-05-01 12:21:05
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `exhibition`
--
CREATE DATABASE IF NOT EXISTS `exhibition` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exhibition`;

-- --------------------------------------------------------

--
-- 資料表結構 `attend`
--

DROP TABLE IF EXISTS `attend`;
CREATE TABLE `attend` (
  `account` varchar(30) NOT NULL,
  `eID` int(11) NOT NULL,
  `aTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `attend`
--

TRUNCATE TABLE `attend`;
--
-- 傾印資料表的資料 `attend`
--

INSERT INTO `attend` (`account`, `eID`, `aTime`) VALUES
('s901121s901121', 1, '2021-03-26 12:20:37'),
('s901121s901121', 2, '2021-03-26 12:44:51');

-- --------------------------------------------------------

--
-- 資料表結構 `exhibition`
--

DROP TABLE IF EXISTS `exhibition`;
CREATE TABLE `exhibition` (
  `eID` int(11) NOT NULL,
  `sAccount` varchar(30) NOT NULL,
  `eName` varchar(50) NOT NULL,
  `ePlace` varchar(30) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `descript` varchar(500) DEFAULT NULL,
  `YTcode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `exhibition`
--

TRUNCATE TABLE `exhibition`;
--
-- 傾印資料表的資料 `exhibition`
--

INSERT INTO `exhibition` (`eID`, `sAccount`, `eName`, `ePlace`, `start`, `end`, `title`, `descript`, `YTcode`) VALUES
(1, 'sponsor', '2021西文書展', '國立臺中科技大學 中商大樓 圖書館 門口', '2021-03-09', '2021-03-10', '西文書展', '歡迎推薦', NULL),
(2, 'nutc_cids', '2019資訊與流通學院專題成果展', '國立臺中科技大學 中正大樓 1F閱覽室', '2019-12-05', '2019-12-07', '資訊與流通學院專題成果展', '資訊與流通學院為提昇學生團隊合作解決問題之能力，發揮創新應用的精神，鼓勵師生從事教學、研究與應用軟體的創作，並邀請業界一同參觀與指導本院畢業學生之創意專題成果，特舉辦五專、二技、四技(含進修部)與碩士班之聯合專題成果展，訂於民國108年11月25日(一)起至12月7日(六)，舉辦一系列活動，歡迎本校師生一同共襄盛舉。', NULL),
(6, 'nutc_bm', '2020商業經營系專題成果展', '國立臺中科技大學 中正大樓 1F川堂', '2020-12-17', '2020-12-18', '2020商業經營系專題成果展', '商業經營系致力於培育「智能與資訊兼備的商業經營決策專才」，為提昇學生團隊合作解決問題之能力，發揮創新應用的精神，並鼓勵師生從事教學、研究與應用軟體的創作，同時給與業界參觀畢業學生－創意專題成果的機會，特訂於民國109年12月17日(四)至109年12月18日(五)，舉辦商業經營系實務專題期末審查暨成果發表會，歡迎本校師生一同共襄盛舉。\r\n\r\n成果展除邀請大專院校教授、產業界人士等專家學者參與評分工作，同時歡迎校內外各界人士參觀指導。透過專題成果的展出，驗證學生所學能與產業界的發展與需求相吻合，落實理論與實務結合，展現學生未來就業競爭能力。', NULL),
(7, 'nutc_cpd', '2021陶瓷商品設計茶具成果展-銀壺', '國立臺中科技大學 中商大樓 圖書館 1F', '2021-04-09', '2021-05-16', '銀壺', '國立臺中科技大學 創意商品設計系\r\n2021陶瓷商品設計茶具成果展\r\n\r\n銀幕帷垂，玉弓之狐\r\n皎潔明月，飲下幸福\r\n以茶坊為底，伴月光絮語，心神領會\r\n謂成「銀壺」\r\n\r\n2020年109學年度上學期，是創意商品設計系開出的選修課，\r\n匯聚品三、品四、品五的學生32人，共聚一堂一起學習製壺。\r\n從對茶葉的認識，茶器的鑑賞與製作，以及相互之間的關係，再到茶席佈置與練習，\r\n邀您共享泡茶時美好的氛圍！\r\n\r\n指導老師：徐子雲   \r\n業師：李幸龍 連炳龍\r\n展覽者：林妤憶 陳子渝 吳佳欣 侯荇菱 許嘉恩 許芷瀞 黃子瑄 蔡韋銓\r\n視覺設計：吳心美', NULL),
(8, 'nutc_cpd', '《設焦 Zero in On》校內展', '國立臺中科技大學 中商大樓 1F', '2021-04-10', '2021-04-16', '創意商品設計系110級畢業展《設焦 Zero in On》', '社會交點⇄設計焦點\r\n社會大眾⇄設計者\r\n\r\n社會與設計互相影響，形成交點，也顯現彼此雙向的社交關係。\r\n『設焦』一詞，一為設計者褪去了生活中看不清的問題，讓使用者透過產品明瞭這些問題的本質。\r\n二為設計者、使用者和產品，在無形和有形中，自成無數緊密交織的脈絡關係，一個新產品誕生同時，串連起這些脈絡，形成新的“社交圈”。\r\n\r\n我們是國立臺中科技大學 創意商品設計系\r\n邀請您一起走進我們的設焦圈\r\n\r\nFB｜https://www.facebook.com/nutccpd\r\nIG｜https://www.instagram.com/nutc_cpd110/', NULL),
(9, 'nutc_cpd', '《設焦 Zero in On》新一代40周年展', '南港展覽館 二館 1F', '2021-05-14', '2021-05-17', '創意商品設計系110級畢業展《設焦 Zero in On》', '社會交點⇄設計焦點\r\n社會大眾⇄設計者\r\n\r\n社會與設計互相影響，形成交點，也顯現彼此雙向的社交關係。\r\n『設焦』一詞，一為設計者褪去了生活中看不清的問題，讓使用者透過產品明瞭這些問題的本質。\r\n二為設計者、使用者和產品，在無形和有形中，自成無數緊密交織的脈絡關係，一個新產品誕生同時，串連起這些脈絡，形成新的“社交圈”。\r\n\r\n我們是國立臺中科技大學 創意商品設計系\r\n邀請您一起走進我們的設焦圈\r\n\r\nFB｜https://www.facebook.com/nutccpd\r\nIG｜https://www.instagram.com/nutc_cpd110/', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `exh_collection`
--

DROP TABLE IF EXISTS `exh_collection`;
CREATE TABLE `exh_collection` (
  `account` varchar(30) NOT NULL,
  `eID` int(11) NOT NULL,
  `cTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `exh_collection`
--

TRUNCATE TABLE `exh_collection`;
--
-- 傾印資料表的資料 `exh_collection`
--

INSERT INTO `exh_collection` (`account`, `eID`, `cTime`) VALUES
('s901121s901121', 1, '2021-04-14 12:35:56'),
('s901121s901121', 2, '2021-04-14 09:25:27'),
('s901121s901121', 6, '2021-04-14 12:35:58'),
('s901121s901121', 7, '2021-04-14 12:35:53'),
('s901121s901121', 8, '2021-04-29 12:58:21'),
('s901121s901121', 9, '2021-04-29 13:07:26'),
('zzz123', 1, '2021-04-14 07:29:27'),
('zzz123', 2, '2021-04-14 07:29:33'),
('zzz123', 6, '2021-04-14 07:29:16'),
('zzz123', 7, '2021-04-14 07:29:30');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `account` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(5) NOT NULL,
  `birth` date NOT NULL,
  `sex` char(1) NOT NULL,
  `phone` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `member`
--

TRUNCATE TABLE `member`;
--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`account`, `password`, `name`, `birth`, `sex`, `phone`) VALUES
('k', '12345678', '流域均', '2021-04-04', 'f', '0963436215'),
('s901121s901121', '12345678', '陳言睿', '2001-11-21', 'm', '0968775633'),
('test123', '123456789', 'wel', '2021-03-30', 'm', '0909090909'),
('zzz123', '00000000', '黃仔魚', '2021-04-01', 'm', '0987878787');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `eID` int(11) NOT NULL,
  `pID` int(11) NOT NULL,
  `pName` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `descript` varchar(200) DEFAULT NULL,
  `YTcode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `product`
--

TRUNCATE TABLE `product`;
--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`eID`, `pID`, `pName`, `author`, `date`, `descript`, `YTcode`) VALUES
(6, 1, '茶巡 ‧ 福爾摩沙', '組員：張庭楨、陳董秋敏、蕭之吟｜指導老師：吳美玉', '2020-12-17', '帶領大家去巡視台灣茶葉文化以及製茶方法', NULL),
(8, 4, '小屋子鍋鍋/The Little House', '設計師：朱子寧｜指導老師：徐子雲', '2021-04-01', '「小屋子鍋鍋」使用陶和木的溫暖質樸打造溫馨用餐氛圍，可以使用生食盒在無包裝商店中選購食材，幫助您留意每餐的營養素攝取量。\r\n讓溫暖的小屋子陪著您一起吃得健康、開心。', NULL),
(8, 5, '再次旅社/ONCE AGAIN', '設計師：吳咅錡、高可芹｜指導老師：李本育', '2021-04-01', '珊瑚白化日益嚴重，以延續生命的想法為源頭，將對環境的愛融入作品設計，讓設計擁有故事感，也利用材質傳達珊瑚逐漸消失的訊息，延伸出永續環境的生機與珍惜世界的美好。', NULL),
(8, 6, 'Kit Balance', '設計師：彭喬淩、賴亭云｜指導老師：王譔博', '2021-04-01', 'Kit Balance為新型態戶外平衡訓練遊樂設施，致力於改善千篇一律的塑膠公園遊具。針對2-5歲幼兒，前庭覺與本體覺的主要發展階段，打造高刺激、可更替的模組遊具。在不同尺寸的排列組合之下創造出各種挑戰性的遊戲路徑，同時也不受限於環境尺寸的限制。\r\n不同以往的塑膠遊具，遊具的粗糙表面與材質使孩童擁有不同的感覺統合之觸覺訓練。', NULL),
(8, 7, 'Forest Diagnoser', '設計師：姚宛凭｜指導老師：張國賓', '2021-04-29', 'Forest Diagnoser結合AI人工智能與新型sap flow裝置，協助巡山員更完善的維持森林的生態平衡及其永續循環發展', NULL),
(8, 8, '與嶼共生', '設計師：施君蓉｜指導老師：蔡宜佳', '2021-04-29', '「與嶼共生」為蘭嶼海廢物文創品牌，利用浮標、鋁罐、瓶蓋等海廢物，解構與重構成極具在地文化特色的文創商品,不僅提升海廢物價值,也讓更多人認識到蘭嶼獨特文化。', NULL),
(8, 9, '睏厚爸/sleepy worker', '設計師：鄭容珊、魏曼育｜指導老師：王譔博', '0000-00-00', '臨時休憩紙板式床板。圍繞在循環設計，將使用過的紙板回收重新組裝成床板使用，族群為在工地裡午休的勞動工作者及臨時休憩做使用，如：辦公室休息、避難逃生。\r\n另外將頭部處高15-18度，以避免進食後立即休息容易引發胃食道逆流。', NULL),
(8, 11, '人類迷惑行為觀察室', '設計師：柳逸璠、葉芷菱｜指導老師：徐子雲', '2021-04-29', '這是場針對設計新鮮人所進行的智財權宣導計畫，以無形對比有形的情境模擬，規劃開放式展覽吸引設計人初步接觸智財權，並再透過特殊的設計師文具，時刻提醒智財權的重要性。', NULL),
(8, 12, '暮晨香韻', '設計師：楊雙｜指導老師：李本育', '2021-04-29', '以梅瓶和梅枝造型，設計一組虛實相稱的花器。\r\n此款兼具空間擺飾及實用功能的設計，運用櫸木與金屬詮釋古典的氛圍，讓晝夜居室空間都能充滿花香韻味。', NULL),
(8, 13, 'GMT+_', '設計師：吳芷玲、葉羿汝｜指導老師：吳銜容', '2021-04-29', '現今我們都負荷著超載的資訊，無法專注使我們感到焦慮，也增加拖延的可能性。「GMT+_」將對時間提出不同見解：你我都走在自己的時區，前進的路上也須重視心理的平衡。', NULL),
(8, 14, '是誰綁架了我的太空船?/Spaceship Hijacking', '設計師：洪薏瑄、劉彥伶｜指導老師：張國賓', '2021-04-29', '概念取自「杏仁核劫持」，將兒福聯盟「我的畫冊」教材以線上繪本重現，搭配教具操作，帶領兒童在書寫和摺紙過程中，重整失落經驗與感受，讓生命教育扎根學校與家庭端。', NULL),
(8, 15, 'Ocean Mood', '設計師：商培文、陳映瑄｜指導老師：李本育', '2021-04-29', '藍色空間可以帶給我們心靈放鬆與平和的感覺，色彩心理學指出藍色光能使人感到心神安定。', NULL),
(8, 16, 'GOALGO', '設計師：李妍臻、賴嘉萱｜指導老師：吳銜容', '2021-04-29', '一款家中成員全齡皆可使用的遊具，使用的過程中，不但可以活動身體，同時能夠增進家人間的情感交流，除此之外，加入遊戲設計使跨齡之間也可以輕鬆的參與。', NULL),
(8, 17, 'Journey', '設計師：林欣儀、洪雨彤、陳姿蒨｜指導老師：張國威', '2021-04-29', '現代社會議題及心理疾病有逐年增加的趨勢，且皆與同理心之多寡有所關連。\r\n我們希望藉由教具培養同理心以及增加青少年的反思能力，達成在潛移默化中減少這些問題的目的。', NULL),
(8, 18, '茗緗', '設計師：史晏瑜、朱家儀、賴涵郁｜指導老師：李本育', '2021-04-29', '推廣臺灣特色山岳，將茶具與香器組合設計。\r\n薰香飄起的裊煙中，隱現出幽靜的觀音山景致。\r\n以漆藝脫胎技法接合瓷器，達到隔熱、輕盈、抗摔、防腐功能。\r\n搭配漆藝特有的精緻美感，集實用與美學一體。', NULL),
(8, 19, '梳適圈/J-BRUSH', '設計師：林昱筠、賴佩均｜指導老師：蔡宜佳', '2021-04-29', '「梳適圈」為減輕手臂高舉及手腕關節負擔的沐浴產品。\r\n整體融合了擴張的水母造型，內部採用刷毛與滾珠設計。\r\n使用者可握住握把上下拉動，針對頭皮進行深度清潔和按摩舒壓。', NULL),
(8, 20, '扶椅', '設計師：廖渃椏｜指導老師：魏明仕', '2021-04-29', '為家中長輩所設計，將搖椅本身的特性更順利帶動起身，手把部分延伸利於起身時抓握，以木製的方式帶給產品更多溫潤感，可放置在客廳、書房或是臥室，不用過多的工具能自行組裝拆解。', NULL),
(8, 21, '保水膠囊', '設計師：林湘翎｜指導老師：魏明仕', '2021-04-29', '盆栽可以綠化環境亦可讓人心情愉悅，但有時會因為忙碌忘記澆水，所以設計可以保水的盆栽，讓植物的生命不會因為沒有水分而死掉，而取名為膠囊是因為水分保存在盆栽裡面不會快速散失。', NULL),
(8, 22, '濕濕寶乾/B-Care For', '設計師：張晏榕、陳昱涵｜指導老師：張國威', '2021-04-29', '寶寶若長期處於濕熱的環境中，皮膚容易出現問題。\r\n於是我們運用材質達到吸濕散熱的效果，並搭配溫溼度感測提醒家長目前的溫溼度變化，讓親子在使用背巾時能更無負擔與便利。', NULL),
(8, 23, '和', '設計師：洪宥承｜指導老師：張國威', '2021-05-01', '人類自古爭鬥不斷,從冷兵器至熱兵器,某些人們依然互相傷害與對抗,於是把鎧甲作為戰爭的象徵,結合武士鎧甲到現代的防彈材料,反諷人們的思維並沒有隨著科技進步。', NULL),
(8, 24, '多多樂車車 \\DUO‘DUO CAR', '設計師：林宥君｜指導老師：吳銜容', '2021-05-01', '專為成長快速的嬰幼兒所設計，共有六種組合形式，可以隨著嬰兒成長轉換，大幅延長產品的使用週期，建立緊密的親子關係！', NULL),
(8, 25, 'Sweet Dreams', '設計師：劉郁葳、潘穎柔｜指導老師：徐子雲', '2021-05-01', 'Sweet Dreams新型態棉花糖機，具許願儀式的製造過程，雲為夢想雛形，選用天然蔬果粉增添色彩寓意，透過轉動糖盒為生活解惑，注入正向因子給人勇往直前的動力！', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `pro_collection`
--

DROP TABLE IF EXISTS `pro_collection`;
CREATE TABLE `pro_collection` (
  `account` varchar(30) NOT NULL,
  `eID` int(11) NOT NULL,
  `pID` int(11) NOT NULL,
  `cTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `pro_collection`
--

TRUNCATE TABLE `pro_collection`;
--
-- 傾印資料表的資料 `pro_collection`
--

INSERT INTO `pro_collection` (`account`, `eID`, `pID`, `cTime`) VALUES
('s901121s901121', 6, 1, '2021-04-29 13:04:17'),
('s901121s901121', 8, 13, '2021-04-29 13:03:43'),
('s901121s901121', 8, 22, '2021-04-29 13:03:55');

-- --------------------------------------------------------

--
-- 資料表結構 `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
CREATE TABLE `sponsor` (
  `sAccount` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `sName` varchar(50) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `sponsor`
--

TRUNCATE TABLE `sponsor`;
--
-- 傾印資料表的資料 `sponsor`
--

INSERT INTO `sponsor` (`sAccount`, `password`, `sName`, `address`, `phone`) VALUES
('nutc_bm', '12345678', '國立臺中科技大學 商業經營系', '臺中市北區三民路三段129號', '04-22196270'),
('nutc_cids', '12345678', '國立臺中科技大學 資訊與流通管理學院', '台中市北區三民路三段129號', '04-22196300'),
('nutc_cpd', '12345678', '國立臺中科技大學 創意商品設計系', '台中市北區三民路三段129號昌明樓2F', '04-22196251'),
('sponsor', '12345678', '國立臺中科技大學圖書館', '台中市北區三民路三段129號', '04-22195678');

-- --------------------------------------------------------

--
-- 資料表結構 `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `account` varchar(30) NOT NULL,
  `pID` int(11) NOT NULL,
  `eID` int(11) NOT NULL,
  `vTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `vote`
--

TRUNCATE TABLE `vote`;
--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `attend`
--
ALTER TABLE `attend`
  ADD PRIMARY KEY (`account`,`eID`),
  ADD KEY `attend_ibfk_2` (`eID`);

--
-- 資料表索引 `exhibition`
--
ALTER TABLE `exhibition`
  ADD PRIMARY KEY (`eID`),
  ADD KEY `sAccount` (`sAccount`);

--
-- 資料表索引 `exh_collection`
--
ALTER TABLE `exh_collection`
  ADD PRIMARY KEY (`account`,`eID`),
  ADD KEY `exh_collection_ibfk_2` (`eID`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`account`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pID`,`eID`),
  ADD KEY `product_ibfk_1` (`eID`);

--
-- 資料表索引 `pro_collection`
--
ALTER TABLE `pro_collection`
  ADD PRIMARY KEY (`account`,`eID`,`pID`),
  ADD KEY `eID` (`eID`,`pID`);

--
-- 資料表索引 `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`sAccount`);

--
-- 資料表索引 `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`eID`,`pID`,`account`),
  ADD KEY `account` (`account`),
  ADD KEY `pID` (`pID`,`eID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `exhibition`
--
ALTER TABLE `exhibition`
  MODIFY `eID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `attend`
--
ALTER TABLE `attend`
  ADD CONSTRAINT `attend_ibfk_1` FOREIGN KEY (`account`) REFERENCES `member` (`account`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attend_ibfk_2` FOREIGN KEY (`eID`) REFERENCES `exhibition` (`eID`);

--
-- 資料表的限制式 `exhibition`
--
ALTER TABLE `exhibition`
  ADD CONSTRAINT `exhibition_ibfk_1` FOREIGN KEY (`sAccount`) REFERENCES `sponsor` (`sAccount`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `exh_collection`
--
ALTER TABLE `exh_collection`
  ADD CONSTRAINT `exh_collection_ibfk_1` FOREIGN KEY (`account`) REFERENCES `member` (`account`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exh_collection_ibfk_2` FOREIGN KEY (`eID`) REFERENCES `exhibition` (`eID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`eID`) REFERENCES `exhibition` (`eID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `pro_collection`
--
ALTER TABLE `pro_collection`
  ADD CONSTRAINT `pro_collection_ibfk_1` FOREIGN KEY (`eID`,`pID`) REFERENCES `product` (`eID`, `pID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pro_collection_ibfk_2` FOREIGN KEY (`account`) REFERENCES `member` (`account`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`account`) REFERENCES `member` (`account`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`pID`,`eID`) REFERENCES `product` (`pID`, `eID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
