import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tddxflutter/features/number_trivia/usecases/get_concrete_number_trivia.dart';
import 'package:tddxflutter/number_trivia.dart';
import 'package:tddxflutter/number_trivia_repository.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository{

  void main() {
    GetConcreteNumberTrivia? usecase;
    MockNumberTriviaRepository? mockNumberTriviaRepository;

    setUp(() {
      mockNumberTriviaRepository = MockNumberTriviaRepository();
      usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository!);
    });
    
    final tNumber = 1;
    final tNumberTrivia = NumberTrivia(text: 'test', number: 1);

    test(
      'should get the number from the repository of number trivia',
        () async {
        when(mockNumberTriviaRepository?.getConcreteNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));
        
        final result = await usecase?.execute(number: tNumber);
        
        expect(result, Right(tNumberTrivia));
        verify(mockNumberTriviaRepository?.getConcreteNumberTrivia(tNumber));

        verifyNoMoreInteractions(mockNumberTriviaRepository);
        },
    );
  }
}