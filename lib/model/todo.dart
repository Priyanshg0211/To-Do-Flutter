import 'package:flutter/material.dart';

class ToDo {
  String? id;
  String? todoText;
  bool isdone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isdone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Walk', isdone: true),
      ToDo(id: '02', todoText: 'Buy Groceries', isdone: true),
      ToDo(id: '03', todoText: 'Check Email'),
      ToDo(id: '04', todoText: 'Team Meeting'),
      ToDo(id: '05', todoText: 'Work on Mobile App for 2 Hours'),
    ];
  }

  static String generateId() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }
}

class ToDoApp extends StatefulWidget {
  @override
  _ToDoAppState createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  List<ToDo> todos = [];

  @override
  void initState() {
    super.initState();
  
    todos = ToDo.todoList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ToDo App'),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].todoText ?? ''),
              subtitle: Text(todos[index].id ?? ''),
       
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
      
            ToDo newTodo = ToDo(
              id: ToDo.generateId(),
              todoText: 'Your New ToDo',
            );

            setState(() {
              todos.add(newTodo);
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

void main() {
  runApp(ToDoApp());
}
