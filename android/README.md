# Atlas 3D Android App

This is the Android version of the Atlas Satellite Earth Viewer.

## Building the App

### Prerequisites
- Android Studio Arctic Fox or later
- Android SDK API 21+ (Android 5.0+)

### Steps
1. Open Android Studio
2. Select "Open an existing Android Studio project"
3. Navigate to this `android` folder and select it
4. Wait for Gradle sync to complete
5. Click Run (green play button) or Build → Build APK

## Features
- Full-screen satellite earth viewer
- GPS location services
- All map layers from the web version
- Native Android app experience

## Permissions
The app requires:
- Internet access for map tiles
- Location access for GPS features

## APK Generation
To generate a release APK:
1. Build → Generate Signed APK
2. Create/select a keystore
3. Select release build variant
4. The APK will be in `app/release/`

## Development
The app uses a WebView to display the HTML/JavaScript application. All the logic remains in the `index.html` file in the assets folder.