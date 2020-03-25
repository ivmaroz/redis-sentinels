# Имитация redis sentinel

Данная настройка предназначена для иммитации работы с sentinel. Не реализована полноценная работа мастер-слейв

Перед запуском создать файл .env

```
HOST_IP=<IP рабочей машины>

REDIS_PORT=6379
REDIS_PASSWORD=<Пароль к redis>

# Название masters хостов. Несколько значений разделяются пробелом 
MASTERS=redis-pres-n1

REDIS_SENTINEL_PORT=26379
```

# Запуск

```
docker-compose build
docker-compose up -d
```

# Использование

В настройках использовать один и тот же sentinel 