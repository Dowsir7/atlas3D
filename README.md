# Atlas 3D - Satellite Earth Viewer

A beautiful, interactive satellite earth viewer built with Leaflet.js. View Earth from space with multiple map layers including satellite imagery, terrain, streets, and NASA data.

## Features

- 🛰️ **Multiple Map Layers**: Satellite, Hybrid, Terrain, Streets, Dark mode, and NASA GIBS
- 🔍 **Global Search**: Search for any location on Earth using OpenStreetMap Nominatim
- 📍 **Location Services**: Find your current location with GPS
- 🎨 **Modern UI**: Sleek dark theme with smooth animations
- 📱 **Mobile Optimized**: Touch-friendly controls and responsive design
- ⚡ **Fast Loading**: CDN-hosted dependencies for quick startup

## Usage

### Web Version
Simply open `index.html` in any modern web browser. No server required!

### Android App
1. Open the `android/` folder in Android Studio
2. Build and run the app on your device/emulator
3. Or build an APK for distribution

### Controls
- **Layer Panel**: Switch between different map types
- **Search Bar**: Type any place name to zoom there
- **Zoom Buttons**: Manual zoom in/out
- **Location Button**: Center on your current GPS location
- **Mouse/Touch**: Pan and zoom the map naturally

## Map Layers

- **Satellite**: High-resolution satellite imagery from Google
- **Hybrid**: Satellite with street labels overlay
- **Terrain**: Topographic map with elevation data
- **Streets**: OpenStreetMap street data
- **Dark**: Dark-themed road map
- **NASA**: Latest NASA MODIS Terra satellite imagery

## Technical Details

### Web Version
- Built with **Leaflet.js** for mapping
- Uses **Google Maps** and **OpenStreetMap** tile services
- **NASA GIBS** for scientific satellite data
- **Nominatim API** for location search (no API key required)
- Pure HTML/CSS/JavaScript - no build process needed

### Android Version
- **WebView** wrapper for native Android app
- **GPS permissions** for location services
- **Full-screen immersive** experience
- Built with Android Studio and Gradle

## Browser Support

Works in all modern browsers with JavaScript enabled:
- Chrome/Chromium
- Firefox
- Safari
- Edge
- Mobile browsers (iOS Safari, Chrome Mobile)

## Android Requirements

- Android 5.0+ (API 21+)
- Internet connection for map tiles
- Location permission for GPS features

## License

Built by AdFreeandFree - Simple app, it's just a spinny world. Ours, most likely.
