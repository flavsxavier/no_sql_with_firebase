import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:no_sql_with_firebase/app/modules/todo_list/domain/entities/todo_item.dart';
import 'package:no_sql_with_firebase/app/modules/todo_list/domain/usecases/add_new_item_to_collection.dart';

part 'todo_list_controller.g.dart';

@Injectable()
class TodoListController = _TodoListControllerBase with _$TodoListController;

abstract class _TodoListControllerBase with Store {
  final AddNewItemToCollection addNewItemToCollection;

  _TodoListControllerBase(this.addNewItemToCollection);

  @action
  Future<void> addNewTodoItem(TodoItem newItem) async {
    final operationResult = await addNewItemToCollection(newItem);

    operationResult.fold(
      (error) => print(
          '$error error occurred when trying to add ${newItem.description}'),
      (data) =>
          print('${newItem.description} was added with value ${newItem.value}'),
    );
  }
}
