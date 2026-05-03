#!/bin/bash

# Atlas 3D APK Build Script
# Run this from the android/ directory

echo "🏗️  Building Atlas 3D Android APK..."
echo ""

# Check if we're in the right directory
if [ ! -f "build.gradle" ]; then
    echo "❌ Error: Please run this script from the android/ directory"
    exit 1
fi

# Check for Android SDK
if [ -z "$ANDROID_HOME" ]; then
    echo "⚠️  ANDROID_HOME not set. Please install Android SDK and set ANDROID_HOME"
    echo "   Download from: https://developer.android.com/studio#downloads"
    echo ""
    echo "   Or use Android Studio to build the APK instead."
    exit 1
fi

echo "✅ Android SDK found at: $ANDROID_HOME"

# Make gradlew executable
chmod +x gradlew

echo ""
echo "🔨 Building debug APK..."
echo ""

# Build the APK
./gradlew assembleDebug

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Build successful!"
    echo ""
    echo "📱 APK location:"
    echo "   android/app/build/outputs/apk/debug/app-debug.apk"
    echo ""
    echo "📲 To install on device:"
    echo "   1. Transfer APK to your Android device"
    echo "   2. Enable 'Install from unknown sources' in settings"
    echo "   3. Tap the APK file to install"
    echo ""
    echo "🚀 Enjoy Atlas 3D on your Android device!"
else
    echo ""
    echo "❌ Build failed. Check the error messages above."
    echo ""
    echo "💡 Try using Android Studio instead for easier troubleshooting."
    exit 1
fi