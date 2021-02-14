// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TodoListController = BindInject(
  (i) => TodoListController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoListController on _TodoListControllerBase, Store {
  final _$valueAtom = Atom(name: '_TodoListControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_TodoListControllerBaseActionController =
      ActionController(name: '_TodoListControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_TodoListControllerBaseActionController.startAction(
        name: '_TodoListControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_TodoListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
