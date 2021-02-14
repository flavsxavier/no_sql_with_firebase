import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/error/failures.dart';
import '../../../../../core/usecases/usecases.dart';
import '../repositories/todo_repository.dart';

part 'get_all_items_from_collection.g.dart';

@Injectable()
class GetAllItemsFromCollection implements Usecase<Stream<dynamic>, NoParams> {
  final TodoRepository repository;

  GetAllItemsFromCollection(this.repository);

  @override
  Either<Failure, Stream> call(NoParams params) {
    return repository.getAllItemsFromCollection();
  }
}
