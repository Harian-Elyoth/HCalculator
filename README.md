# 🧮 Flutter Calculator

<div align="center">
  <img src="assets/icon/calculator_icon.png" alt="Calculator Icon" width="120" height="120">
  
  [![Flutter](https://img.shields.io/badge/Flutter-3.8.1+-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
  [![Dart](https://img.shields.io/badge/Dart-3.8.1+-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
  [![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
  
  **A beautiful, cross-platform calculator app built with Flutter**
  
  [Features](#-features) • [Installation](#-installation) • [Usage](#-usage) • [Platforms](#-supported-platforms) • [Contributing](#-contributing)
  
</div>

---

## ✨ Features

- 🎯 **Clean & Intuitive UI** - Modern material design interface
- 🔢 **Basic Operations** - Addition, Subtraction, Multiplication, Division
- 📱 **Responsive Design** - Works seamlessly on all screen sizes
- ⚡ **Real-time Calculations** - Instant results as you type
- 🎨 **Custom Icons** - Beautiful calculator icon across all platforms
- 🚀 **Cross-Platform** - Runs on Android, iOS, Web, Windows, macOS, and Linux
- 💫 **Error Handling** - Graceful handling of invalid expressions
- 🔄 **Clear Function** - Easy reset with the clear button

## 📱 Screenshots

<div align="center">
  
| Mobile | Tablet | Desktop |
|:------:|:------:|:-------:|
| 📱 Coming Soon | 📱 Coming Soon | 🖥️ Coming Soon |

</div>

## 🚀 Installation

### Prerequisites

- Flutter SDK (3.8.1 or higher)
- Dart SDK (3.8.1 or higher)
- Android Studio / VS Code with Flutter extensions

### Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/calculator.git
   cd calculator
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Platform-Specific Setup

<details>
<summary>📱 Android</summary>

```bash
flutter run -d android
```

</details>

<details>
<summary>🍎 iOS</summary>

```bash
flutter run -d ios
```

</details>

<details>
<summary>🌐 Web</summary>

```bash
flutter run -d chrome
```

</details>

<details>
<summary>🪟 Windows</summary>

```bash
flutter run -d windows
```

</details>

<details>
<summary>🍎 macOS</summary>

```bash
flutter run -d macos
```

</details>

<details>
<summary>🐧 Linux</summary>

```bash
flutter run -d linux
```

</details>

## 🎮 Usage

1. **Launch the app** on your preferred platform
2. **Tap numbers** to input values
3. **Use operators** (+, -, ×, ÷) for calculations
4. **Press equals (=)** to get the result
5. **Clear (C)** to reset the calculator
6. **Use percentage (%)** for percentage calculations

## 🛠️ Tech Stack

- **Framework:** [Flutter](https://flutter.dev/)
- **Language:** [Dart](https://dart.dev/)
- **Math Engine:** [math_expressions](https://pub.dev/packages/math_expressions)
- **Icons:** [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)

## 🔧 Dependencies

```yaml
dependencies:
  flutter: sdk: flutter
  cupertino_icons: ^1.0.8
  math_expressions: ^3.0.0

dev_dependencies:
  flutter_test: sdk: flutter
  flutter_lints: ^5.0.0
  flutter_launcher_icons: ^0.14.4
```

## 📋 Supported Platforms

| Platform | Status | Version |
|----------|--------|---------|
| 🤖 Android | ✅ | API 21+ |
| 🍎 iOS | ✅ | iOS 12+ |
| 🌐 Web | ✅ | All browsers |
| 🪟 Windows | ✅ | Windows 10+ |
| 🍎 macOS | ✅ | macOS 10.14+ |
| 🐧 Linux | ✅ | Ubuntu 18.04+ |

## 📁 Project Structure

```
calculator/
├── 📱 android/          # Android platform files
├── 🍎 ios/             # iOS platform files
├── 🌐 web/             # Web platform files
├── 🪟 windows/         # Windows platform files
├── 🍎 macos/           # macOS platform files
├── 🐧 linux/           # Linux platform files
├── 📚 lib/
│   ├── 🏠 main.dart           # App entry point
│   ├── 📺 screens/
│   │   └── calculator_screen.dart
│   └── 🧩 widgets/
├── 🖼️ assets/
│   └── icon/
│       └── calculator_icon.png
└── 📋 pubspec.yaml     # Project configuration
```

## 🤝 Contributing

We welcome contributions! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add some amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### 📋 Development Guidelines

- Follow [Flutter style guide](https://docs.flutter.dev/development/tools/formatting)
- Write tests for new features
- Update documentation as needed
- Keep commits atomic and descriptive

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Math expressions library contributors
- Material Design for UI inspiration

---

<div align="center">
  
  **⭐ Star this repo if you found it helpful! ⭐**
  
  Made with ❤️ and Flutter
  
</div>
