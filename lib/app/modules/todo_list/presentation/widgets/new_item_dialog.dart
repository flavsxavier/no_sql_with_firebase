import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../external/models/todo_item_model.dart';

import '../controllers/todo_list_controller.dart';

class NewItemDialog extends StatelessWidget {
  final TodoListController _controller;

  NewItemDialog({TodoListController controller}) : _controller = controller;

  final _descriptionTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) {
        final currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null)
          currentFocus.focusedChild.unfocus();
      },
      child: AlertDialog(
        title: Text('Add a new item'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextField(
                controller: _descriptionTextController,
                decoration: InputDecoration(labelText: 'Item description'),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              'Cancel'.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: Colors.red),
            ),
            onPressed: () => Modular.navigator.maybePop(),
          ),
          TextButton(
            child: Text(
              'Add new item'.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: Theme.of(context).primaryColor),
            ),
            onPressed: () {
              _controller.addNewTodoItem(
                TodoItemModel(
                  description: _descriptionTextController.text,
                  value: false,
                ),
              );

              Modular.navigator.maybePop();
            },
          ),
        ],
      ),
    );
  }
}
