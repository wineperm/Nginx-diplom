# Используем официальный образ Nginx
FROM nginx:latest

# Копируем конфигурационный файл Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Копируем статические файлы
COPY html/ /usr/share/nginx/html/html/

# Открываем порт 80
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
