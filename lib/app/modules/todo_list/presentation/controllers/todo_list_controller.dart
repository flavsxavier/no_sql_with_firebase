import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'todo_list_controller.g.dart';

@Injectable()
class TodoListController = _TodoListControllerBase with _$TodoListController;

abstract class _TodoListControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
