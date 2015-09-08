<?php
Yii::import('application.models.*');

class m150910_121412_cms55 extends CDbMigration
{
    public function up()
    {


       $this->dbConnection->createCommand("
          DELETE FROM `area` WHERE `name`= 'kontakty';

           INSERT INTO `area` (
           `id` ,`name` ,`title`
           )
           VALUES (
           '' ,  'kontakty',  'Контакты');
       ")->execute();

        $area = Area::model()->find('name=:name',array(':name'=>'kontakty'));
        $areaId = $area->primaryKey;

        $this->dbConnection->createCommand("
            DELETE FROM `area_block` WHERE `name`= 'kontakty';

            INSERT INTO `area_block` (
           `id` ,
           `name` ,
           `title` ,
           `area_id` ,
           `visible` ,
           `content` ,
           `view` ,
           `sort_order`
           )
           VALUES (
           NULL ,  'kontakty',  'Контакты',  '$areaId', '1' ,
                           '<p>Телефон: 7 (8412) 25 04 04, 7 (499) 322 34 04</p>
                           <p>Адрес: г. Пенза, ул. Кураева 1а, 3 этаж</p>
                           <p>E-mail: info@plusonedev.ru</p>' ,
                   'areablocknotitle' , '330'
           );

        ")->execute();
   }

    public function down()
    {
        $this->dbConnection->createCommand("
           DELETE FROM `area` WHERE `name`= 'kontakty';

           DELETE FROM `area_block` WHERE `name`= 'kontakty';
        ")->execute();
    }

    /*
    // Use safeUp/safeDown to do migration with transaction
    public function safeUp()
    {
    }

    public function safeDown()
    {
    }
    */
}
