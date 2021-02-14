import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../entities/todo_item.dart';

abstract class TodoRepository {
  Future<Either<Failure, void>> addNewItemToCollection(TodoItem newItem);
  Future<Either<Failure, void>> toggleItemValueInCollection(TodoItem item);
}
