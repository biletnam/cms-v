<?php

class m150420_143429_cms42 extends CDbMigration
{
	public function up()
	{
        $this->dbConnection->createCommand("
            DROP TABLE IF EXISTS `menu`;
        ")->execute();

        $this->dbConnection->createCommand("
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
            ) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

            INSERT INTO `menu` (`id`, `title`, `name`, `items_template`, `activeitem_class`, `firstitem_class`, `lastitem_class`) VALUES
              (1, 'Основное меню', 'osnovnoe-menju', '<div class=\"item-layout\"><span class=\"bullet\"></span>{menu}</div>', '', 'menu-first', 'menu-end');
        ")->execute();

        $this->dbConnection->createCommand("
            UPDATE `menu_item` SET `link` = '/callback' WHERE `link`='/contact';
        ")->execute();
	}

	public function down()
	{

	}
}