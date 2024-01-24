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
      ToDo(id: '01', todoText: 'Morining Walk', isdone: true),
      ToDo(id: '01', todoText: 'Buy Groceries', isdone: true),
      ToDo(id: '01', todoText: 'Check Email', ),
      ToDo(id: '01', todoText: 'Team Meeting', ),
      ToDo(id: '01', todoText: 'Work on Mobile App for 2 Hours', ),
    ];
  }
}
