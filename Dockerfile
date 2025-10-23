# Используем официальный Python образ
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем скрипт в контейнер
COPY script.py .

# Команда для запуска при старте контейнера
CMD ["python", "script.py"]