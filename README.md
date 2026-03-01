# 🏀 Basketball Counter

A simple Flutter app to track basketball scores for two teams and detect the winner automatically when a team reaches 15 points.

---

## Badges

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)
![Cubit](https://img.shields.io/badge/bloc-cubit-FF4081?style=flat)
![GitHub Last Commit](https://img.shields.io/github/last-commit/AishaHassan2903/basketball_counter.svg)
![GitHub Repo Size](https://img.shields.io/github/repo-size/AishaHassan2903/basketball_counter.svg)

---

## 📋 Table of Contents

- [Features](#-features)
- [Getting Started](#-getting-started)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Contributing](#-contributing)
- [License](#-license)
- [Author & Feedback](#-author--feedback)

---

## ⚙️ Features

| Feature                     | Description                                                                                       |
| ---------------------------- | ------------------------------------------------------------------------------------------------- |
| **Add Points**               | Add points for Team A and Team B (1, 2, or 3 points)                                              |
| **Automatic Winner Detection** | Detects the winner automatically when a team reaches 15 points                                     |
| **Winner Dialog**            | Shows a dialog announcing the winner                                                               |
| **Reset Button**             | Reset the game anytime                                                                             |
| **Dynamic Colors**           | Green for winner, Red for loser, Yellow for draw                                                  |
| **State Management**         | Uses Cubit (flutter_bloc) for state management                                                    |

---

## 📦 Getting Started

Make sure [Flutter](https://flutter.dev/) is installed on your machine.

Clone the repository and run the app:

```bash
git clone https://github.com/AishaHassan2903/basketball_counter
```

Navigate to the project folder:

```bash
cd basketball_counter
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

## 💻 Tech Stack

This project is built using:

- Flutter
- Dart
- flutter_bloc

---

## 🌳 Project Structure

```
lib/
├── cubit/
│   ├── counter_cubit.dart       # Cubit for managing counter state
│   └── counter_state.dart       # State definitions for the counter
│
├── widgets/
│   ├── counter_display.dart     # Widget to display current count
│   ├── action_buttons.dart      # Buttons for incrementing/decrementing
│   ├── team_card.dart           # Card widget for team display
│   └── scoreboard.dart          # Main scoreboard widget
│
├── main.dart                    # App entry point
└── homePage.dart                # Home page / main UI
```

---

## 🤝 Contributing

We ❤️ contributions! Whether it's fixing bugs, improving documentation, or adding new features, your help is welcome.

### How to Contribute

**Fork the repository**

Click the "Fork" button at the top-right of the repo page.

**Clone your fork** 

```bash
git clone https://github.com/your-username/basketball_counter.git
cd basketball_counter
```

**Create a new branch**

```bash
git checkout -b feature/your-feature-name
```

**Make your changes** 

Improve code, add features, or fix bugs. Keep your code clean and well-commented.

**Commit your changes**

```bash
git add .
git commit -m "Describe your changes"
```

**Push your branch**

```bash
git push origin feature/your-feature-name
```

**Open a Pull Request** 

Go to the original repository and click **Compare & Pull Request**.
Describe your changes and submit for review.

---

## 📄 License

This project is licensed under the [**MIT License**](https://opensource.org/licenses/MIT).  

You are free to:

- ✅ Use the project for personal or commercial purposes  
- ✅ Modify and adapt the code  
- ✅ Distribute copies of the original or modified project 

---

## 💌 Author & Feedback

- GitHub: [@Aisha Hassan](https://github.com/AishaHassan2903)  
- LinkedIn: [@Aisha Hassan](https://www.linkedin.com/in/aisha-hassan-dahy?utm_source=share_via&utm_content=profile&utm_medium=member_android)

💬 Have feedback or suggestions? Open an [issue](https://github.com/BankkRoll/basketball_counter/issues) or reach out on GitHub/LinkedIn!
