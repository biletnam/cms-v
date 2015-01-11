<?php

class m150427_141525_cms42a extends CDbMigration
{
	public function up()
	{
        $this->dbConnection->createCommand("
            DELETE FROM `area_block` WHERE `area_id` = 13;
            INSERT INTO `area_block` (`name`, `title`, `area_id`, `visible`, `content`, `view`, `sort_order`) VALUES
            ('dostavka-korma', 'Доставка корма', 13, 1, '<p><img alt=\"\" src=\"/images/dostavka-korma.png\" style=\"height:152px; width:139px\" /></p>\r\n\r\n<p>Доставка корма</p>\r\n', 'areablocknotitle', 230),
            ('uborka-akvariumov', 'Уборка аквариумов', 13, 1, '<p><img alt=\"\" src=\"/images/uborka-akvariumov.png\" style=\"height:152px; width:139px\" /></p>\r\n\r\n<p>Уборка аквариумов</p>\r\n', 'areablocknotitle', 250),
            ('reklama-rakushek', 'Реклама ракушек', 13, 1, '<p><img alt=\"\" src=\"/images/reklama-rakushek.png\" style=\"height:152px; width:137px\" /></p>\r\n\r\n<p>Реклама ракушек</p>\r\n', 'areablocknotitle', 260),
            ('vodoroslevoe-obertyvanie', 'Водорослевое обертывание', 13, 1, '<p><img alt=\"\" src=\"/images/vodoroslevoe-obertyvanie.png\" style=\"height:152px; width:139px\" /></p>\r\n\r\n<p>Водорослевое обертывание</p>\r\n', 'areablocknotitle', 320);
        ")->execute();
	}

	public function down()
	{

	}
}