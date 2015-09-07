## +1 CMS. Сборка "Сайт-визитка" ##
### Инструкция ###
* Клонировать или скачать репозиторий.
* Дать права на запись папкам /www/assets , /www/upload  , /protected/runtime и всем их подпапкам.
* Скачать Yii-framework версии 1.1.16 и указать к нему путь в файлах /www/index.php и /protected/yiic.php.
* Создать базу данных и прописать доступы к базе в файле /protected/local.php.
* Накатить миграции из папки protected/migrations: 
В командной строке из-под папки protected ввести команду
 “php yiic migrate”, подтвердить нажатием кнопки “y”
* Ссылка на админку /manage Логин: admin Пароль: admin.
