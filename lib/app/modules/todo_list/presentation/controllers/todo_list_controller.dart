import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:no_sql_with_firebase/app/modules/todo_list/domain/usecases/delete_item_from_collection.dart';

import '../../domain/entities/todo_item.dart';
import '../../domain/usecases/add_new_item_to_collection.dart';
import '../../domain/usecases/toggle_item_value_in_collection.dart';
import '../../external/models/todo_item_model.dart';

part 'todo_list_controller.g.dart';

@Injectable()
class TodoListController = _TodoListControllerBase with _$TodoListController;

abstract class _TodoListControllerBase with Store {
  final AddNewItemToCollection addNewItemToCollection;
  final DeleteItemFromCollection deleteItemFromCollection;
  final ToggleItemValueInCollection toggleItemValueInCollection;

  _TodoListControllerBase(
    this.addNewItemToCollection,
    this.deleteItemFromCollection,
    this.toggleItemValueInCollection,
  ) {
    _getAllTodoItems();
  }

  @observable
  var todoItems = <TodoItemModel>[].asObservable();

  @action
  void _getAllTodoItems() {
    var dataStream = Firestore.instance.collection('todo_items').snapshots();

    dataStream.listen((snapshot) {
      todoItems = snapshot.documents
          .map<TodoItemModel>(
              (document) => TodoItemModel.fromMap(document.data))
          .toList()
          .asObservable();
    });
  }

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

  @action
  Future<void> deleteTodoItem({int itemIndex}) async {
    final item = todoItems.elementAt(itemIndex);
    final operationResult = await deleteItemFromCollection(item);

    operationResult.fold(
      (error) => print(
          '$error error occurred when trying to delete ${item.description}'),
      (data) =>
          print('${item.description} with value ${item.value} was deleted'),
    );
  }

  @action
  Future<void> toggleItemValue({int itemIndex, bool newValue}) async {
    final item = todoItems.elementAt(itemIndex);

    final operationResult = await toggleItemValueInCollection(
      item.copyWith(value: newValue),
    );

    operationResult.fold(
      (error) => print(
          '$error error occurred when trying to update ${item.description}'),
      (data) => print('${item.description} was updated with value $newValue'),
    );
  }
}
