# Используем базовый образ с Maven и JDK
FROM maven:3.8.5-openjdk-17

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл pom.xml и все исходные файлы в контейнер
COPY pom.xml .
COPY src ./src

# Скачиваем зависимости и собираем проект
RUN mvn clean install

# Команда по умолчанию для запуска
CMD ["java", "-cp", "target/docker_maven-1.0-SNAPSHOT.jar", "com.example.App"]

