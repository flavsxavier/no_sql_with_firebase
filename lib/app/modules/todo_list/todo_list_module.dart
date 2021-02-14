import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/controllers/todo_list_controller.dart';
import 'presentation/pages/todo_list_page.dart';

class TodoListModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $TodoListController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => TodoListPage()),
      ];

  static Inject get to => Inject<TodoListModule>.of();
}
