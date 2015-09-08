## +1 CMS. Сборка "Сайт-визитка" ##
### Инструкция ###
* Клонировать или скачать репозиторий.
* Установить Yii-framework версии 1.1.16:
  - С помощью Composer:
     В консоли из-под корневой папки сайта (в которой лежит файл composer.json) ввести 'php path/to/composer.phar install'.
     Или, если Composer установлен глобально, ввести 'php composer install'.
  - Либо скачать вручную https://github.com/yiisoft/yii/releases/download/1.1.16/yii-1.1.16.bca042.zip , распаковать и
    положить папку с фреймворком в корневую папку сайта и указать путь к нему в файлах '/www/index.php' и '/protected/yiic.php'
* В консоли из корневой директории с помощью команды 'php protected/yiic config createDirs', создать папки
    '/www/assets', '/www/upload', '/www/upload/banners', '/protected/runtime' с правами на запись.
  Либо создать эти папки и дать права на запись вручную.
* В папке 'protected/config/' создать файл 'local.php':
  - В консоли из корневой директории ввести команду 'php protected/yiic config createLocal'.
  - Либо вручную в папке 'protected/config' переименовать файл 'local.php.template' в 'local.php'.
* Создать базу данных и прописать доступы к базе в файле '/protected/config/local.php' (имя базы данных, логин, пароль).
* - Накатить миграции из папки 'protected/migrations':
      В консоли из корневой директории ввести команду 'php protected/yiic migrate'.
  - Либо сделать импорт базы из файла viz-plusonecms.sql
* Ссылка на админку /manage Логин: admin Пароль: admin.
