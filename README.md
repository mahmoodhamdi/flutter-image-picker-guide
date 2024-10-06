# Flutter Image Picker Guide 📸

A simple and modularized Flutter app demonstrating how to use the image_picker package to pick images from the gallery or capture images from the camera.

## 🌟 Features

- **📱 Pick images from the gallery**
- **📷 Capture images using the camera**
- **🖼️ Display selected or captured images in the app**
- **⚙️ Modularized helper class for image picking**

## 🚀 Getting Started

### Prerequisites

- **Flutter SDK**
- **Android Studio / VS Code**
- **Basic understanding of Flutter development**

## 📦 Installation

1. Add the following dependency to your `pubspec.yaml`

```yaml
dependencies:
  image_picker: <LATEST VERSION>
```

2. Run:

```bash
flutter pub get
```

## ⚙️ Configuration

### 🤖 Configuring Android

1. Update the minimum Android SDK requirements in `android/app/build.gradle`

```gradle
android {
    compileSdkVersion 34

    defaultConfig {
        minSdkVersion 21
        targetSdkVersion 34
    }
}
```

2. Add the required permissions in `android/app/src/main/AndroidManifest.xml`

```xml
<uses-permission android:name="android.permission.CAMERA"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
```

### 🍏 Configuring iOS

Add the following permissions to `ios/Runner/Info.plist`

```xml
<key>NSPhotoLibraryUsageDescription</key>
<string>We need access to your photo library to select images.</string>
<key>NSCameraUsageDescription</key>
<string>We need access to your camera to capture images.</string>
```

## 💡 Usage

### Initialization

- The ImagePickerHelper class contains two methods to either select an image from the gallery or capture one from the camera.

### Picking an Image from the Gallery

```dart
File? image = await ImagePickerHelper.pickImage();
```

### Capturing an Image from the Camera

```dart
File? image = await ImagePickerHelper.captureImage();
```

### Displaying the Image

```dart
image != null ? Image.file(image!) : Icon(Icons.image);
```

## 🛠️ Project Structure

```text
lib/
├── app.dart                # MyApp widget with MaterialApp configuration
├── home_page.dart          # UI for selecting or capturing images
├── image_picker_helper.dart # Utility class for image selection and capture
└── main.dart               # Main entry point of the app
```

### Core Components

- **`ImagePickerHelper`**  
  - A utility class that provides methods to pick images from the gallery or capture images using the camera.

- **`MyHomePage`**
  - The main UI of the app that shows a button to either pick or capture an image, and displays the selected image.

- **`MyApp`**
  - Configures the app and sets the home page `MyHomePage` as the default screen.

### 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### ✨ Acknowledgments

- Special thanks to the Flutter Image Picker package maintainers

### Quote

> "مَن قال: سُبْحانَ اللَّهِ وبِحَمْدِهِ، في يَومٍ مِائَةَ مَرَّةٍ؛ حُطَّتْ خَطاياهُ وإنْ كانَتْ مِثْلَ زَبَدِ البَحْرِ."
>
> صحيح البخاري
