import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controllers/todo_list_controller.dart';
import '../widgets/new_item_dialog.dart';

class TodoListPage extends StatelessWidget {
  final _controller = Modular.get<TodoListController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo-List')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => NewItemDialog(controller: _controller),
          ); // controller.addNewTodoItem();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
