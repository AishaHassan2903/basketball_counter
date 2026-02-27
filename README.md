# 🏀 Basketball Points Counter

Basketball Points Counter is a simple Flutter application that tracks basketball scores for two teams and automatically detects the winner when a team reaches 15 points.

The app allows users to add points easily and reset the game at any time.

---

## Getting Started

To run the project, make sure Flutter is installed on your machine.

Clone the repository:

```bash
git clone https://github.com/your-username/basketball_points.git
```

Go to the project folder:

```bash
cd basketball_points
```

Install dependencies:

```bash
flutter pub get
```

Run the app:

```bash
flutter run
```

---

## Features

- Add points for Team A and Team B
- Add 1, 2, or 3 points
- Automatic winner detection at 15 points
- Winner dialog message
- Reset button
- Dynamic colors:
  - Winner → Green
  - Loser → Red
  - Draw → Yellow
- State management using Cubit

---

## Technologies

This project is built using:

- Flutter
- Dart
- flutter_bloc

---

## Project Structure

```
lib/
 ├── cubit/
 ├── widgets/
 ├── main.dart
 └── homePage.dart
```

---

## Feedback

If you have any questions, suggestions, or feedback, please feel free to open an issue in this repository or contact me directly.
