import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecases.dart';
import '../entities/todo_item.dart';
import '../repositories/firebase_repository.dart';

part 'toggle_item_value_in_collection.g.dart';

@Injectable()
class ToggleItemValueInCollection implements AsyncUsecase<void, TodoItem> {
  final FirebaseRepository repository;

  ToggleItemValueInCollection(this.repository);

  @override
  Future<Either<Failure, void>> call(TodoItem item) async {
    if (item.description.isNotEmpty &&
        item.description != null &&
        item.description != '') {
      return await repository.toggleItemValueInCollection(item);
    } else {
      return left(InvalidItemFailure());
    }
  }
}
