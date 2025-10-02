# Employee Directory - Android Client

Мобильное приложение для работы со справочником сотрудников.

## 🚀 Быстрый старт

### Требования
- Android Studio
- JDK 17
- Android SDK (API 26+)

### Установка и запуск

```bash
git clone <ссылка-на-репозиторий>
cd employee-directory-android
./gradlew assembleDebug
```

APK будет создан в: `app/build/outputs/apk/debug/app-debug.apk`

### Или через скрипт

```bash
./build_apk.sh
```

## 📱 Установка

1. Перенесите APK файл на Android устройство
2. Установите APK
3. Откройте приложение

## 🔐 Вход в систему

**По умолчанию администратор:**
- Логин: `admin`
- Пароль: `admin123`

Или зарегистрируйте нового пользователя через приложение.

## ⚙️ Конфигурация

### Режим работы

Приложение работает в **standalone режиме** - данные хранятся локально в базе данных Room.

Для подключения к серверу измените в `app/build.gradle.kts`:

```kotlin
buildConfigField("String", "API_BASE", "\"http://10.0.2.2:8080\"")
buildConfigField("boolean", "STANDALONE_MODE", "false")
```

Где `10.0.2.2` - это localhost для Android эмулятора.

## 🛠️ Технологии

- **Kotlin** - основной язык
- **Room Database** - локальное хранилище
- **Retrofit** - HTTP клиент
- **Material Design** - UI компоненты
- **Coroutines** - асинхронность
- **ViewBinding** - привязка представлений

## 🔨 Gradle команды

```bash
# Очистить проект
./gradlew clean

# Собрать Debug APK
./gradlew assembleDebug

# Собрать Release APK
./gradlew assembleRelease

# Установить на устройство
./gradlew installDebug
```

## 📋 Возможности

### Для всех пользователей
- ✅ Просмотр списка сотрудников
- ✅ Поиск сотрудников
- ✅ Просмотр статистики
- ✅ Создание и просмотр отчетов

### Только для администраторов
- ✅ Добавление сотрудников
- ✅ Редактирование сотрудников
- ✅ Удаление сотрудников

## 📱 Системные требования

- **Минимальная версия Android:** 8.0 (API 26)
- **Целевая версия Android:** 14 (API 35)
- **Размер приложения:** ~7 MB

## 📄 Лицензия

MIT