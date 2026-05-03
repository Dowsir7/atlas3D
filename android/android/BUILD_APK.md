# Building Atlas 3D Android APK

## Method 1: Using Android Studio (Recommended)

### Prerequisites:
- Android Studio (latest version)
- Android SDK API 21+ installed
- Java JDK 8 or 11

### Steps:
1. **Download the project:**
   ```bash
   git clone https://github.com/Dowsir7/atlas3D.git
   cd atlas3D
   ```

2. **Open in Android Studio:**
   - Launch Android Studio
   - Select "Open an existing Android Studio project"
   - Navigate to the `atlas3D/android` folder and select it
   - Wait for Gradle sync to complete (may take a few minutes)

3. **Build the APK:**
   - Go to **Build → Build APK(s)**
   - Or click the green hammer icon in the toolbar
   - Wait for the build to complete

4. **Find the APK:**
   - The APK will be in `android/app/build/outputs/apk/debug/`
   - File name: `app-debug.apk`

5. **Install on device:**
   - Transfer the APK to your Android device
   - Enable "Install from unknown sources" in settings
   - Tap the APK to install

## Method 2: Using Command Line (Advanced)

### Prerequisites:
- Android SDK installed and configured
- `ANDROID_HOME` environment variable set
- Gradle installed

### Steps:
```bash
# Navigate to android folder
cd atlas3D/android

# Build debug APK
./gradlew assembleDebug

# Or build release APK (requires signing)
./gradlew assembleRelease

# Find APK in:
# Debug: app/build/outputs/apk/debug/app-debug.apk
# Release: app/build/outputs/apk/release/app-release.apk
```

## Method 3: Using Online Build Services

### Option A: GitHub Actions (Free)
Add this workflow to `.github/workflows/build.yml`:

```yaml
name: Build Android APK
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - uses: actions/setup-java@v3
      with:
        java-version: '11'
        distribution: 'temurin'
    - name: Setup Android SDK
      uses: android-actions/setup-android@v2
    - name: Build APK
      run: |
        cd android
        chmod +x gradlew
        ./gradlew assembleDebug
    - name: Upload APK
      uses: actions/upload-artifact@v3
      with:
        name: atlas3d-apk
        path: android/app/build/outputs/apk/debug/app-debug.apk
```

### Option B: Use Online APK Builders
- **APKBuilder** (free tier available)
- **Appy Pie** (no-code APK builder)
- **Buildo** (web-based Android builder)

## Method 4: Using Android Studio in Browser

If you have access to a machine with Android Studio, you can:
1. Download the repository as ZIP
2. Extract and open the `android` folder in Android Studio
3. Build APK as described in Method 1

## Quick APK for Testing

For immediate testing, you can use services like:
- ** Appetize.io** - Test APK in browser
- **TestFlight** equivalent for Android
- **Firebase App Distribution**

## Troubleshooting

### Common Issues:
1. **Gradle sync fails**: Update Android Studio and SDK
2. **Build fails**: Check Java version (should be 8 or 11)
3. **APK won't install**: Enable "Unknown sources" in Android settings

### Minimum Requirements:
- Android 5.0+ (API 21)
- 50MB free space for installation
- Internet connection for map tiles

## Release APK (For Distribution)

To create a signed release APK:

1. In Android Studio: **Build → Generate Signed APK**
2. Create/select a keystore
3. Fill in signing information
4. Select "release" build variant
5. The signed APK will be ready for Google Play or direct distribution

---

**The APK will be named `Atlas 3D` and have the satellite earth viewer icon.**