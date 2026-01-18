Task Manager Pro – Flutter App
Overview

Task Manager Pro is a simple Flutter application that allows users to track tasks dynamically. Users can view a list of pending tasks and add new tasks with simulated asynchronous delays, mimicking network calls. The app demonstrates state management, asynchronous operations, and responsive UI layout in Flutter.

Features

Display a dynamic list of tasks

Add new tasks with a 2-second simulated delay

Loading indicator shown while tasks are being added

Prevents multiple taps during async operations

Properly handles layout constraints with Expanded and ListView.builder



Technical Details

Flutter Version: 3.x or higher

State Management: StatefulWidget + setState

Widgets Used: Scaffold, AppBar, Column, ListView.builder, Padding, ElevatedButton, CircularProgressIndicator, ListTile

Async Handling: Future.delayed to simulate network delay

Layout: Column + Expanded to ensure proper constraints

Installation

Clone the repository

git clone https://github.com/<your-username>/task-manager-pro.git


Navigate to the project folder

cd task-manager-pro


Get dependencies

flutter pub get


Run the app

flutter run

Code Snippet – Adding a Task
Future<void> _addTaskAsync() async {
  setState(() => isLoading = true);

  await Future.delayed(Duration(seconds: 2));

  setState(() {
    tasks.add("New Task ${tasks.length + 1}");
    isLoading = false;
  });
}


Updates isLoading to show a loading spinner

Adds a new task dynamically

Ensures UI rebuilds properly

Folder Structure
task-manager-pro/
│
├── lib/
│   └── main.dart       # Main app code
│
├── pubspec.yaml        # Flutter dependencies
│
└── README.md           # Project documentation

Best Practices Followed

Async State Management: Ensures UI remains responsive during delays

Layout Safety: Expanded prevents unbounded height errors in ListView

UX-Friendly: Loading indicators prevent multiple taps and provide feedback

Clean Code: Proper naming conventions, modular logic, no unused variables

Contribution

Fork the repository

Create a feature branch: git checkout -b feature-name

Commit changes: git commit -m 'Add new feature'

Push branch: git push origin feature-name

Create a pull request

License

This project is MIT Licensed – see the LICENSE file for details.
