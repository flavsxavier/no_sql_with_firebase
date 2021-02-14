// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TodoListController = BindInject(
  (i) => TodoListController(i<AddNewItemToCollection>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoListController on _TodoListControllerBase, Store {
  final _$addNewTodoItemAsyncAction =
      AsyncAction('_TodoListControllerBase.addNewTodoItem');

  @override
  Future<void> addNewTodoItem(TodoItem newItem) {
    return _$addNewTodoItemAsyncAction.run(() => super.addNewTodoItem(newItem));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
