#!/bin/bash

echo "🔄 Начинаем полную пересборку APK..."

cd "$(dirname "$0")"

echo "📁 Очистка предыдущих сборок..."
./gradlew clean

echo "🗑️ Удаление старых APK..."
rm -f app/build/outputs/apk/debug/app-debug.apk
rm -f app/build/outputs/apk/release/app-release.apk

echo "🔨 Сборка нового APK..."
./gradlew assembleDebug

echo "📱 Проверка результата..."
if [ -f "app/build/outputs/apk/debug/app-debug.apk" ]; then
    echo "✅ APK успешно собран!"
    ls -lh app/build/outputs/apk/debug/app-debug.apk
    
    echo "📋 Копирование в корень проекта..."
    cp app/build/outputs/apk/debug/app-debug.apk ./EmployeeDirectory-NEW.apk
    
    echo "🎉 Готово! Новый APK: EmployeeDirectory-NEW.apk"
    ls -lh ./EmployeeDirectory-NEW.apk
else
    echo "❌ Ошибка сборки APK!"
    exit 1
fi

