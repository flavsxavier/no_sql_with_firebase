import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DeleteItemDialog extends StatelessWidget {
  final Function onDelete;

  const DeleteItemDialog({this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) {
        final currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null)
          currentFocus.focusedChild.unfocus();
      },
      child: AlertDialog(
        title: Text('Delete this item?'),
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
              'Delete item'.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: Theme.of(context).primaryColor),
            ),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
