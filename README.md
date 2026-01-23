# 📝 Task Manager Pro (Flutter)

## 📌 Overview

**Task Manager Pro** is a simple Flutter application built as part of a debugging and UI optimization task.  
The app demonstrates proper **state management**, **asynchronous handling**, and **layout optimization** using Flutter best practices.

Users can view a list of tasks and add new tasks with a simulated network delay while maintaining a responsive and stable UI.

---

## 🎯 Objective

- Fix layout and rendering issues
- Handle asynchronous operations safely
- Prevent UI freezes and crashes
- Improve visual feedback and user experience
- Follow Flutter coding standards and best practices

---

## ✨ Features

- 📋 Display a dynamic list of tasks
- ➕ Add new tasks with a simulated 2-second delay
- ⏳ Loading indicator during async operations
- 🚫 Disable button while loading to prevent duplicate actions
- 📱 Responsive and crash-free UI

---

## 🛠️ Tech Stack

- **Framework:** Flutter
- **Language:** Dart
- **State Management:** `StatefulWidget` with `setState`
- **Async Handling:** `Future` and `async/await`

---

## 📂 Project Structure

lib/
└── main.dart # Application entry point and UI logic


---

## ▶️ How to Run

1. Clone the repository:
bash
git clone https://github.com/your-username/task-manager-pro.git
Navigate to the project directory:

cd task-manager-pro
Get dependencies:

flutter pub get
Run the app:

flutter run
## 🧠 Key Implementation Details
Asynchronous Integrity
Uses Future.delayed() to simulate a network request

UI remains responsive during delay

Loading state handled using isLoading

Future<void> _addTaskAsync() async {
  setState(() {
    isLoading = true;
  });

  await Future.delayed(Duration(seconds: 2));

  setState(() {
    tasks.add("New Task ${tasks.length + 1}");
    isLoading = false;
  });
}
UI Optimization
Expanded widget prevents layout overflow errors

ListView.builder efficiently renders dynamic lists

CircularProgressIndicator provides visual feedback

ElevatedButton(
  onPressed: isLoading ? null : _addTaskAsync,
  child: isLoading
      ? CircularProgressIndicator(color: Colors.white)
      : Text("Add Task After 2s Delay"),
)

## 🐞 Bugs Fixed
Issue	Solution
ListView overflow crash	Wrapped in Expanded
UI not updating	Proper use of setState
Multiple button taps	Disabled button during loading
Async UI freeze	Loading indicator + state control
⚠️ Crash Risk Analysis
❌ Calling setState after widget disposal → avoided

❌ Unbounded ListView inside Column → fixed using Expanded

❌ Multiple async calls → prevented with isLoading

✅ App runs safely without render or state crashes

## 📈 Best Practices Followed
Clean and readable code

Proper widget tree hierarchy

Safe async handling

UX-friendly loading states

Flutter layout constraints respected

## Author
## Sujit Prajapati
