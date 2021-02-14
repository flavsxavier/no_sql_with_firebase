import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'domain/usecases/add_new_item_to_collection.dart';
import 'domain/usecases/toggle_item_value_in_collection.dart';
import 'external/datasources/firebase_datasource_implementation.dart';
import 'infrastructure/repositories/todo_repository_implementation.dart';
import 'presentation/controllers/todo_list_controller.dart';
import 'presentation/pages/todo_list_page.dart';

class TodoListModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $TodoListController,
        $AddNewItemToCollection,
        $ToggleItemValueInCollection,
        $TodoRepositoryImplementation,
        $FirebaseDataSourceImplementation,
        Bind((i) => Firestore.instance),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => TodoListPage()),
      ];

  static Inject get to => Inject<TodoListModule>.of();
}
