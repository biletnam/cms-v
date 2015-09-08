-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 09 2015 г., 15:29
-- Версия сервера: 5.5.43
-- Версия PHP: 5.6.7-1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `biryukov-stand3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `area`
--

INSERT INTO `area` (`id`, `name`, `title`) VALUES
(3, 'telefony-v-shapke', 'Телефоны в шапке'),
(7, 'preimuschestva-na-glavnoj', 'Преимущества на главной'),
(8, 'dostupy-na-glavnoj', 'Доступы на главной'),
(9, 'uslugi-na-glavnoj', 'Услуги на главной'),
(10, 'sotsseti-v-podvale-shablona', 'Соцсети в подвале шаблона'),
(11, 'zagolovok-v-shapke', 'Заголовок в шапке'),
(12, 'o-kompanii', 'О компании'),
(13, 'vashi-uslugi-na-glavnoj', 'Ваши услуги на главной'),
(14, 'kontakty', 'Контакты');

-- --------------------------------------------------------

--
-- Структура таблицы `area_block`
--

CREATE TABLE IF NOT EXISTS `area_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `content` text,
  `view` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `AREA` (`area_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Дамп данных таблицы `area_block`
--

INSERT INTO `area_block` (`id`, `name`, `title`, `area_id`, `visible`, `content`, `view`, `sort_order`) VALUES
(45, 'vozmozhnost-zarekomendovat-sebja-dlja-naibolshego-chisla-potentsialnyh-klientov', 'Возможность зарекомендовать себя для наибольшего числа потенциальных клиентов', 7, 1, '<p>\r\n	Возможность зарекомендовать себя для наибольшего числа потенциальных клиентов</p>\r\n', 'areablocknotitle', 270),
(46, 'sozdanie-progressivnogo-imidzha-dlja-kompanii', 'Создание прогрессивного имиджа для компании', 7, 1, '<p>\r\n	Создание прогрессивного имиджа для компании</p>\r\n', 'areablocknotitle', 280),
(17, 'telefony', 'Телефоны', 3, 1, '<p>+7(8412) 25&nbsp;04 04</p>\r\n\r\n<p>&nbsp;+7(499) 3223-404</p>\r\n', 'areablocknotitle', 10),
(33, 'vk', 'vk', 10, 1, '<a href="#" class="vk" target="_blank"></a>', 'areablocknotitle', 170),
(34, 'fb', 'fb', 10, 1, '<a href="#" class="fb" target="_blank"></a>', 'areablocknotitle', 180),
(35, 'in', 'in', 10, 1, '<a href="#" class="in" target="_blank"></a>', 'areablocknotitle', 190),
(36, 'tw', 'tw', 10, 1, '<a href="#" class="tw" target="_blank"></a>', 'areablocknotitle', 200),
(38, 'fishpangram', 'Fishpangram', 11, 1, '<p>Лучшая &ldquo;рыба&rdquo; для вашего бизнеса!</p>\r\n', 'areablock', 210),
(39, 'o-kompanii-fishpangram', 'О компании «Fishpangram»', 12, 1, '<p>\r\n	Компания &laquo;Fishpangram&raquo; создана для того, чтобы вы смогли в полной мере оценить информационное наполнение и функциональные возможности вашего будущего сайта. Созданный визуальный образ и услуги на данной демонстрационной версии компании приведены для примера.</p>\r\n<p>\r\n	Для вашего бизнеса мы разработаем свой индивидуальный дизайн, ориентируясь на деятельность именно вашей компании с использованием предложенного функционала.</p>\r\n', 'areablock', 220),
(52, 'reklama-rakushek', 'Реклама ракушек', 13, 1, '<p><img alt="" src="/images/reklama-rakushek.png" style="height:152px; width:137px" /></p>\r\n\r\n<p>Реклама ракушек</p>\r\n', 'areablocknotitle', 260),
(51, 'uborka-akvariumov', 'Уборка аквариумов', 13, 1, '<p><img alt="" src="/images/uborka-akvariumov.png" style="height:152px; width:139px" /></p>\r\n\r\n<p>Уборка аквариумов</p>\r\n', 'areablocknotitle', 250),
(50, 'dostavka-korma', 'Доставка корма', 13, 1, '<p><img alt="" src="/images/dostavka-korma.png" style="height:152px; width:139px" /></p>\r\n\r\n<p>Доставка корма</p>\r\n', 'areablocknotitle', 230),
(47, 'effektivnoe-prodvizhenie-predlagaemyh-uslug', 'Эффективное продвижение предлагаемых услуг', 7, 1, '<p>\r\n	Эффективное продвижение предлагаемых услуг</p>\r\n', 'areablocknotitle', 290),
(48, 'uvelichenie-rynka-sbyta', 'Увеличение рынка сбыта', 7, 1, '<p>\r\n	Увеличение рынка сбыта</p>\r\n', 'areablocknotitle', 300),
(49, 'rasshirenie-geografii-kompanii', 'Расширение географии компании', 7, 1, '<p>\r\n	Расширение географии компании</p>\r\n', 'areablocknotitle', 310),
(53, 'vodoroslevoe-obertyvanie', 'Водорослевое обертывание', 13, 1, '<p><img alt="" src="/images/vodoroslevoe-obertyvanie.png" style="height:152px; width:139px" /></p>\r\n\r\n<p>Водорослевое обертывание</p>\r\n', 'areablocknotitle', 320),
(54, 'kontakty', 'Контакты', 14, 1, '<p>Телефон: +7 (8412) 25 04 04, +7 (499) 322 34 04</p>\r\n\r\n<p>Адрес: г. Пенза, ул. Кураева 1а, 3 этаж</p>\r\n\r\n<p>E-mail:&nbsp;info@plusonedev.ru</p>\r\n', 'areablocknotitle', 330);

-- --------------------------------------------------------

--
-- Структура таблицы `callback_config`
--

CREATE TABLE IF NOT EXISTS `callback_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL,
  `type` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port` varchar(255) NOT NULL,
  `encryption` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `verify_code` tinyint(1) DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `timeout` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `callback_config`
--

INSERT INTO `callback_config` (`id`, `enabled`, `type`, `host`, `username`, `password`, `port`, `encryption`, `sender`, `verify_code`, `email`, `timeout`) VALUES
(1, 1, 'smtp', 'smtp.mail.ru', '', '', '465', 'ssl', 'Сайт Визитка', 1, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `adminonly` int(11) DEFAULT NULL,
  `mainpage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `config`
--

INSERT INTO `config` (`id`, `sitename`, `author`, `adminonly`, `mainpage_id`) VALUES
(1, 'Сайт-визитка', 'plusodin-web', 0, 38);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `items_template` varchar(255) DEFAULT NULL,
  `activeitem_class` varchar(255) DEFAULT NULL,
  `firstitem_class` varchar(255) DEFAULT NULL,
  `lastitem_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NAME` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `title`, `name`, `items_template`, `activeitem_class`, `firstitem_class`, `lastitem_class`) VALUES
(1, 'Основное меню', 'osnovnoe-menju', '<div class="item-layout"><span class="bullet"></span>{menu}</div>', '', 'menu-first', 'menu-end');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_item`
--

CREATE TABLE IF NOT EXISTS `menu_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `link` varchar(128) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL,
  `menu_id` int(11) unsigned NOT NULL,
  `sort_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `PARENT` (`parent_id`),
  KEY `MENU` (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Дамп данных таблицы `menu_item`
--

INSERT INTO `menu_item` (`id`, `title`, `link`, `parent_id`, `menu_id`, `sort_order`) VALUES
(22, 'О компании', '/about', 0, 1, 80),
(27, 'Контактная информация', '/callback', 0, 1, 110),
(29, 'Наполнение сайта', '/content', 0, 1, 90);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL,
  `link` varchar(128) NOT NULL DEFAULT '',
  `title` varchar(512) NOT NULL DEFAULT '',
  `content` longtext,
  `keywords` varchar(1000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LINK` (`link`),
  KEY `PARENT` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `parent_id`, `link`, `title`, `content`, `keywords`, `description`, `layout`, `view`) VALUES
(38, 0, 'main', 'Главная', '', 'Главная', 'Главная', 'first_page', 'notitle'),
(28, 0, 'about', 'О компании', '<p><span style="font-size:16px">Данный текст предназначен для того, чтобы было хорошо и ясно видно, как будут выглядеть стили текста. Делается это для того, чтобы заказчик, дизайнер и верстальщик правильно поняли друг друга и не было потом никаких вопросов и претензий типа &laquo;я думал, что это будет выглядеть по-другому&raquo; и так далее...</span></p>\r\n\r\n<p><span style="font-size:16px">Здесь, например, можно увидеть, каким будет абзац основного текста. Просим обратить внимание на межстрочное расстояние, отступ первой строки, выравнивание, расстояние между абзацами. Также важна сама гарнитура основного шрифта, кегль (размер).</span></p>\r\n\r\n<h2>Заголовок 2</h2>\r\n\r\n<p><span style="font-size:16px">Заголовок, который Вы видите выше имеет стиль заголовка 2. Такова будет его гарнитура, начертание, отступы, размер.</span></p>\r\n\r\n<h3>Заголовок 3</h3>\r\n\r\n<p><span style="font-size:16px">Внутри текста могут быть фразы, выделенные <strong>жирным шрифтом</strong>. Также могут быть слова и целые предложения <em>выделенные курсивом</em>. В тексте могут встречаться <a href="/">ссылки</a>.</span></p>\r\n\r\n<p><img alt="" src="/upload/userfiles/images/951a61eb889be56afe052d552396dc07.png" style="float:left; height:187px; width:256px" /><span style="font-size:16px">Текст может содержать рисунки. Они могут быть помещены в текст с обтеканием или без, иметь выравнивание влево, вправо или по центру. Имеет значение рамка вокруг рисунка, ее цвет, толщина, и начертание (сплошная, пунктирная и т. д.), отступ картинки от рамки и отстсупы. рамки от обрамляющего текста.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:16px">Также текст может содержать таблицы:</span></p>\r\n\r\n<table align="center" border="1" cellpadding="5" cellspacing="1" style="width:816px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col"><span style="font-size:20px">Заголовок 1</span></th>\r\n			<th scope="col"><span style="font-size:20px">Заголовок 2</span></th>\r\n			<th scope="col"><span style="font-size:20px">Заголовок 3</span></th>\r\n			<th scope="col"><span style="font-size:20px">Заголовок 4</span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.1</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.1</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.1</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.1</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.2</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.2</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.2</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.2</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.3</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.3</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.3</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.3</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.4</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.4</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.4</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.4</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.5</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.5</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.5</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.5</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.6</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.6</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.6</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.6</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><span style="font-size:16px">Таблица может иметь разные стили рамки, отступы внутри ячеек, расстояния между ячейками, заголовок таблицы, цвет фона ячеек и другие параметры.<br />\r\n&nbsp;&nbsp; &nbsp;В тексте может присутствовать список. В нем надо обратить внимание на:<br />\r\n&nbsp;&nbsp; &nbsp;&bull; &nbsp; отступы списка относительно окружающего текста;<br />\r\n&nbsp;&nbsp; &nbsp;&bull; &nbsp; тип списка: нумерованный числами, буквами, размеченный маркерами;<br />\r\n&nbsp;&nbsp; &nbsp;&bull; &nbsp; отступы каждого элемента списка слева, справа, сверху и снизу;<br />\r\n&nbsp;&nbsp; &nbsp;&bull; &nbsp; вид, форма, цвет маркера<br />\r\nЭто, пожалуй, все. Желаем Вам, чтобы Ваш текст выглядел красиво, презентабельно, информативно. Чтобы его было приятно, удобно и полезно читать!</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'О компании', 'О компании', 'main', 'view'),
(30, 0, 'content', 'Наполнение сайта', '<p><span style="font-size:16px">Данный текст предназначен для того, чтобы было хорошо и ясно видно, как будут выглядеть стили текста. Делается это для того, чтобы заказчик, дизайнер и верстальщик правильно поняли друг друга и не было потом никаких вопросов и претензий типа &laquo;я думал, что это будет выглядеть по-другому&raquo; и так далее...</span></p>\r\n\r\n<p><span style="font-size:16px">Здесь, например, можно увидеть, каким будет абзац основного текста. Просим обратить внимание на межстрочное расстояние, отступ первой строки, выравнивание, расстояние между абзацами. Также важна сама гарнитура основного шрифта, кегль (размер).</span></p>\r\n\r\n<h2>Заголовок 2</h2>\r\n\r\n<p><span style="font-size:16px">Заголовок, который Вы видите выше имеет стиль заголовка 2. Такова будет его гарнитура, начертание, отступы, размер.</span></p>\r\n\r\n<h3>Заголовок 3</h3>\r\n\r\n<p><span style="font-size:16px">Внутри текста могут быть фразы, выделенные <strong>жирным шрифтом</strong>. Также могут быть слова и целые предложения <em>выделенные курсивом</em>. В тексте могут встречаться <a href="/">ссылки</a>.</span></p>\r\n\r\n<p><img alt="" src="/upload/userfiles/images/951a61eb889be56afe052d552396dc07.png" style="float:left; height:187px; width:256px" /><span style="font-size:16px">Текст может содержать рисунки. Они могут быть помещены в текст с обтеканием или без, иметь выравнивание влево, вправо или по центру. Имеет значение рамка вокруг рисунка, ее цвет, толщина, и начертание (сплошная, пунктирная и т. д.), отступ картинки от рамки и отстсупы. рамки от обрамляющего текста.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:16px">Также текст может содержать таблицы:</span></p>\r\n\r\n<table align="center" border="1" cellpadding="5" cellspacing="1" style="width:816px">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col"><span style="font-size:20px">Заголовок 1</span></th>\r\n			<th scope="col"><span style="font-size:20px">Заголовок 2</span></th>\r\n			<th scope="col"><span style="font-size:20px">Заголовок 3</span></th>\r\n			<th scope="col"><span style="font-size:20px">Заголовок 4</span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.1</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.1</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.1</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.1</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.2</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.2</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.2</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.2</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.3</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.3</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.3</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.3</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.4</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.4</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.4</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.4</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.5</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.5</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.5</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.5</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 1.6</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 2.6</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 3.6</span></td>\r\n			<td style="text-align:center"><span style="font-size:14px">Содержание 4.6</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><span style="font-size:16px">Таблица может иметь разные стили рамки, отступы внутри ячеек, расстояния между ячейками, заголовок таблицы, цвет фона ячеек и другие параметры.<br />\r\n&nbsp;&nbsp; &nbsp;В тексте может присутствовать список. В нем надо обратить внимание на:<br />\r\n&nbsp;&nbsp; &nbsp;&bull; &nbsp; отступы списка относительно окружающего текста;<br />\r\n&nbsp;&nbsp; &nbsp;&bull; &nbsp; тип списка: нумерованный числами, буквами, размеченный маркерами;<br />\r\n&nbsp;&nbsp; &nbsp;&bull; &nbsp; отступы каждого элемента списка слева, справа, сверху и снизу;<br />\r\n&nbsp;&nbsp; &nbsp;&bull; &nbsp; вид, форма, цвет маркера<br />\r\nЭто, пожалуй, все. Желаем Вам, чтобы Ваш текст выглядел красиво, презентабельно, информативно. Чтобы его было приятно, удобно и полезно читать!</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Наполнение сайта', 'Наполнение сайта', 'main', 'view'),
(36, 0, 'service', 'Услуги', '<p>\r\n	<em>Страница в разработке.</em></p>\r\n', 'Услуги', 'Услуги', 'main', 'view'),
(37, 0, 'contact', 'Контактная информация', '<p>\r\n	<em>Страница в разработке.</em></p>\r\n', 'Контактная информация', 'Контактная информация', 'main', 'view');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_migration`
--

CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1430912656),
('m150111_124333_base', 1430912660),
('m150415_091214_cms36', 1430912694),
('m150416_090337_cms33', 1430912694),
('m150420_143429_cms42', 1430912694),
('m150427_141525_cms42a', 1430912694);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `salt`, `role`, `status`) VALUES
(1, 'admin', '', '2656a196fb1f511628fe61365bf596db', '54862c1be6f582.03655350', 'admin', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
