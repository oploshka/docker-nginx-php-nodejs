# Docker-compose / Nginx / Backend - php / Frontend - nodeJs

## Для чего
Данная сборка для создания приложений и разворачивания его на сервере и локальной машине.
Разруливает все nginx, на стороне бека php, а за фронт отвечает nodeJs.
На беке можно запустить фреймворк, cms или касомную сборку (при необходимости подменяем или допиливаем докер контейнер)
На фронте nodeJs соответственно Vue или же можно заточиться под Reakt

## Структура
Все данные по контейнерам находятся в папке container со своим названием.
Например nginx. Для чего нужен nginx думаю объяснять не надо.
Для web ресурсов используем префикс к названию папки "web_".
Структура для каждого контейнера имеет вид
- backup (тут храним резервные копии или же используем, при необходимости что то вытащить или передать в контейнер)
- config (здесь храним конфиги)
- data (данные необходимые для работы контейнера)
- log (разные логи, для удобства)

Для разых конфигов используем разные папки. Например для php-apache - config будет содержать 2 папки "apache" и "php" 
Для web ресурсов не нужно кидать web скрипты в корень, используем папку html. Рядом с html будет лежать папка с сертификатами - если это будет необходимо.
Для единообразия стараемся отдавать данные сайта из папки web, те для контейнера web_frontend - данные сайта (необходимые для билда или выполнения)
будут лежать в web_frontend/data/html, а в nginx отдается папка web_frontend/data/html/web

# Установка и запуск
1) .env.example копируем в .env
2) редактируем host файл
```php
########################################################################
##############################   docker   ##############################
#########################################################################

127.0.0.1 	t.com
# plus-pay
127.0.0.1 	frontend.t.com
127.0.0.1 	backend.t.com


#########################################################################
```
3) редактируем домен в конфиге nginx - server_name
- container/nginx/config/conf.d/web_backend.conf
- container/nginx/config/conf.d/web_frontend.conf
