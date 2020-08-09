## Инструкция по установке докера

### Обновить списки пакетов
```shell script
apt-get update
```

### Установить Docker 
```shell script
apt-get install docker.io
```

### Установить Docker-compose 
```shell script
# вместо 1.26.0 - вставить последнюю версию
curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
```

