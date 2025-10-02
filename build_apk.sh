#!/bin/bash

echo "Starting APK build..."
cd "$(dirname "$0")"

echo "Setting permissions..."
chmod +x gradlew

echo "Cleaning build..."
./gradlew clean

echo "Building debug APK..."
./gradlew assembleDebug

echo "Build complete!"
echo "APK location: app/build/outputs/apk/debug/app-debug.apk"

# Copy to root
if [ -f "app/build/outputs/apk/debug/app-debug.apk" ]; then
    cp app/build/outputs/apk/debug/app-debug.apk ./EmployeeDirectory-Standalone.apk
    echo "Copied to: EmployeeDirectory-Standalone.apk"
    ls -lh ./EmployeeDirectory-Standalone.apk
fi

