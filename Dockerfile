# Используем легкий образ Python
FROM python:3.9-slim

# Копируем код и устанавливаем зависимости
WORKDIR /app
COPY . .
RUN pip install flask

# Открываем порт 5000 и запускаем приложение
EXPOSE 5000
CMD ["python", "app.py"]