import 'package:dartz/dartz.dart';

import '../../../../../core/error/failures.dart';
import '../entities/todo_item.dart';

abstract class FirebaseRepository {
  Future<Either<Failure, void>> addNewItemToCollection(TodoItem newItem);
}
