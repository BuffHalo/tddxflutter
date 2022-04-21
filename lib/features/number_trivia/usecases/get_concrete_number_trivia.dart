import 'package:dartz/dartz.dart';
import 'package:tddxflutter/number_trivia.dart';
import 'package:tddxflutter/number_trivia_repository.dart';

import '../../../failures.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure,NumberTrivia>> execute({
    required int number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}