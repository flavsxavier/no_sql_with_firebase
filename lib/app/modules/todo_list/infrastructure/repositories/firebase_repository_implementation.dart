import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/error/failures.dart';
import '../../domain/entities/todo_item.dart';
import '../../domain/repositories/firebase_repository.dart';
import '../datasources/firebase_datasource.dart';

part 'firebase_repository_implementation.g.dart';

@Injectable()
class FirebaseRepositoryImplementation implements FirebaseRepository {
  final FirebaseDataSource dataSource;

  FirebaseRepositoryImplementation(this.dataSource);

  @override
  Future<Either<Failure, void>> addNewItemToCollection(TodoItem newItem) async {
    try {
      return right(
        await dataSource.addNewItemToCollection(
          description: newItem.description,
          value: newItem.value,
          collectionName: 'todo_items',
        ),
      );
    } on FirebaseException {
      return left(OperationFailure());
    }
  }

  @override
  Future<Either<Failure, void>> toggleItemValueInCollection(
      TodoItem item) async {
    try {
      return right(
        await dataSource.toggleItemValueInCollection(
          description: item.description,
          value: item.value,
          collectionName: 'todo_items',
        ),
      );
    } on FirebaseException {
      return left(OperationFailure());
    }
  }
}
