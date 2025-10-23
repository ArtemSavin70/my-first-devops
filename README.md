# Мой первый девопс проект

Hello, is my first project he-he).

## Описание
Learning Git, GitHub, Docker basics.

## Технологии
- Git
- GitHub
- Docker

## Подробная документация по шагам

### Часть 1: Установка Git и настройка GitHub

#### 1.1 Установка Git
**Выполненные шаги:**
1. Скачал Git с официального сайта [git-scm.com](https://git-scm.com/)
2. Запустил установщик с настройками по умолчанию
3. Проверил установку командой:

   git --version
1.2 Создание аккаунта GitHub
Зарегистрировался на github.com
Подтвердил email адрес

1.3 Настройка SSH-ключей
Проблема: Не удавалось создать SSH ключи из-за кириллических символов в пути пользователя Windows.

Решение:Создал новый профиль в Windows 10 в имени которого была только латиница.

Добавил публичный ключ в GitHub:

Сгенерировал ключ: ssh-keygen -t ed25519 -C "vip.3.3.9@bk.ru"

Скопировал ключ. cat ~/.ssh/id_ed25519.pub | clip

Добавил в Настройки GitHub → SSH and GPG keys

Проверил подключение: ssh -T git@github.com

Часть 2: Работа с репозиторием
2.1 Создание репозитория
Создал новый репозиторий my-first-devops на GitHub

Выбрал публичный доступ

2.2 Клонирование репозитория

git clone git@github.com:ArtemSavin70/my-first-devops.git

cd my-first-devops

Часть 3: Работа с Docker
3.1 Установка Docker
Установил Docker Desktop с официального сайта

Проверил установку:


docker --version
3.2 Запуск тестового контейнера

docker run hello-world
Результат: Успешный вывод приветственного сообщения от Docker.

3.3 Создание собственного Dockerfile
Создал Dockerfile со следующим содержимым:

FROM python:3.9-slim
WORKDIR /app
COPY script.py .
CMD ["python", "script.py"]

3.4 Создание Python скрипта
Создал script.py:

print("Hello, DevOps World!")

3.5 Сборка и запуск собственного образа

# Сборка образа
docker build -t my-python-app .

# Запуск контейнера
docker run my-python-app

3.6 Проверка контейнеров
Для просмотра всех контейнеров использовал:

docker ps -a

Часть 4: Документирование
4.1 Создание скриншотов

Сделал скриншоты успешного выполнения команд

Сохранил в папку screenshots/

Добавил в README.md с помощью Markdown-разметки

4.2 Коммит и пуш изменений

git add .
git commit -m "Отредактированный Readme и скриншоты"
git push origin main

Скриншоты
1. Отработавшие контейнеры
https://screenshots/docker_ps.png

2. Контейнер Hello_World
https://screenshots/hello_world.png

3. Контейнер My_python_app
https://screenshots/my_python_app.png

Структура проекта

my-first-devops/
├── README.md
├── Dockerfile
├── script.py
└── screenshots/
    ├── docker_ps.png
    ├── hello_world.png
    ├── my_python_app.png
