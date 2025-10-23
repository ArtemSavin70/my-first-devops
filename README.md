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

Решение:

Создал папку для ключей в простом пути:


mkdir -p /c/ssh_keys
ssh-keygen -t ed25519 -C "my_email@example.com" -f /c/ssh_keys/id_ed25519
Добавил публичный ключ в GitHub:

Скопировал ключ: cat /c/ssh_keys/id_ed25519.pub

Добавил в Настройки GitHub → SSH and GPG keys

Настроил SSH конфиг:


mkdir -p ~/.ssh
echo "IdentityFile /c/ssh_keys/id_ed25519" > ~/.ssh/config
Проверил подключение:


ssh -T git@github.com
Часть 2: Работа с репозиторием
2.1 Создание репозитория
Создал новый репозиторий my-first-devops на GitHub

Выбрал публичный доступ

Инициализировал с README.md

2.2 Клонирование репозитория

git clone git@github.com:username/my-first-devops.git
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

dockerfile
FROM python:3.9-slim
WORKDIR /app
COPY script.py .
CMD ["python", "script.py"]
3.4 Создание Python скрипта
Создал script.py:

python
print("Hello, DevOps World!")
print("This is my first Docker container!")
for i in range(3):
    print(f"Counting: {i+1}")
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
git commit -m "Add detailed documentation and screenshots"
git push origin main
Выводы
Успешно настроил Git и SSH-ключи для работы с GitHub

Освоил базовые операции с Docker-контейнерами

Научился создавать собственные Docker-образы

Задокументировал весь процесс в README.md

Скриншоты
1. Отработавшие контейнеры
https://screenshots/docker_ps.png

2. Контейнер Hello_World
https://screenshots/hello_world.png

3. Контейнер My_python_app
https://screenshots/my_python_app.png

Структура проекта
text
my-first-devops/
├── README.md
├── Dockerfile
├── script.py
└── screenshots/
    ├── docker_ps.png
    ├── hello_world.png
    ├── my_python_app.png
text

## Следующие шаги для завершения:

1. **Сохраните обновленный README.md**
2. **Добавьте файлы в Git:**
   ```
   git add README.md
Сделайте коммит:


git commit -m "Add detailed step-by-step documentation in Russian"
Запушьте изменения:


git push origin main