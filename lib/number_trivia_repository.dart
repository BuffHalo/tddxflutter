import 'package:dartz/dartz.dart';
import 'package:tddxflutter/failures.dart';
import 'package:tddxflutter/number_trivia.dart';

abstract class NumberTriviaRepository {

  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}