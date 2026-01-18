import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: InternshipTest()));

class InternshipTest extends StatefulWidget {
  @override
  _InternshipTestState createState() => _InternshipTestState();
}

class _InternshipTestState extends State<InternshipTest> {
  List<String> tasks = ["Review PRs", "Fix Overflow", "Write Tests"];
  bool isLoading = false;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task Manager Pro")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Pending Tasks",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.check_circle_outline),
                  title: Text(tasks[index]),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: isLoading ? null : _addTaskAsync,
              child:
                  isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text("Add Task After 2s Delay"),
            ),
          ),
        ],
      ),
    );
  }
}
