import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure([List props = const <dynamic>[]]);
}

class InvalidItemFailure extends Failure {
  @override
  List<Object> get props => const <dynamic>[];
}

class OperationFailure extends Failure {
  @override
  List<Object> get props => const <dynamic>[];
}
