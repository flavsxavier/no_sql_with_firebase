import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
      body: Observer(builder: (_) {
        if (_controller.todoItems.isNotEmpty) {
          return ListView.builder(
            itemCount: _controller.todoItems.length,
            itemBuilder: (context, index) {
              print(_controller.todoItems);
              return CheckboxListTile(
                value: _controller.todoItems.elementAt(index).value,
                title: Text(_controller.todoItems.elementAt(index).description),
                onChanged: (newValue) {
                  _controller.toggleItemValue(
                    itemIndex: index,
                    newValue: newValue,
                  );
                },
              );
            },
          );
        } else {
          return Center(
            child: Text(
              'Items will be shown here when you add them',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          );
        }
      }),
    );
  }
}
