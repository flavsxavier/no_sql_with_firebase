// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TodoListController = BindInject(
  (i) => TodoListController(i<AddNewItemToCollection>(),
      i<DeleteItemFromCollection>(), i<ToggleItemValueInCollection>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoListController on _TodoListControllerBase, Store {
  final _$todoItemsAtom = Atom(name: '_TodoListControllerBase.todoItems');

  @override
  ObservableList<TodoItemModel> get todoItems {
    _$todoItemsAtom.reportRead();
    return super.todoItems;
  }

  @override
  set todoItems(ObservableList<TodoItemModel> value) {
    _$todoItemsAtom.reportWrite(value, super.todoItems, () {
      super.todoItems = value;
    });
  }

  final _$addNewTodoItemAsyncAction =
      AsyncAction('_TodoListControllerBase.addNewTodoItem');

  @override
  Future<void> addNewTodoItem(TodoItem newItem) {
    return _$addNewTodoItemAsyncAction.run(() => super.addNewTodoItem(newItem));
  }

  final _$deleteTodoItemAsyncAction =
      AsyncAction('_TodoListControllerBase.deleteTodoItem');

  @override
  Future<void> deleteTodoItem({int itemIndex}) {
    return _$deleteTodoItemAsyncAction
        .run(() => super.deleteTodoItem(itemIndex: itemIndex));
  }

  final _$toggleItemValueAsyncAction =
      AsyncAction('_TodoListControllerBase.toggleItemValue');

  @override
  Future<void> toggleItemValue({int itemIndex, bool newValue}) {
    return _$toggleItemValueAsyncAction.run(
        () => super.toggleItemValue(itemIndex: itemIndex, newValue: newValue));
  }

  final _$_TodoListControllerBaseActionController =
      ActionController(name: '_TodoListControllerBase');

  @override
  void _getAllTodoItems() {
    final _$actionInfo = _$_TodoListControllerBaseActionController.startAction(
        name: '_TodoListControllerBase._getAllTodoItems');
    try {
      return super._getAllTodoItems();
    } finally {
      _$_TodoListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todoItems: ${todoItems}
    ''';
  }
}
