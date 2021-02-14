import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

abstract class Usecase<Type, Params> {
  Either<Failure, Type> call(Params params);
}

abstract class AsyncUsecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => const <dynamic>[];
}
