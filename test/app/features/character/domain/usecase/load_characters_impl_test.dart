import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_morty/app/features/character/domain/model/character_model.dart';
import 'package:rick_morty/app/features/character/domain/usecase/load_characters.dart';
import 'package:rick_morty/app/features/character/domain/usecase/load_characters_impl.dart';
import 'package:rick_morty/app/services/http/custom_client.dart';
import 'package:rick_morty/app/services/http/custom_response.dart';

import 'characters_mocked_response.dart';

class MockCustomClient extends Mock implements CustomClient {}

void main() {
  late CustomClient client;
  late LoadCharacters usecase;

  setUp(() {
    registerFallbackValue(Uri());
    client = MockCustomClient();
    usecase = LoadCharactersImpl(client: client);
  });

  test('loadCharacters returns Success with character list on 200 status code',
      () async {
    // Arrange
    when(() => client.get(any(), headers: any(named: 'headers')))
        .thenAnswer((_) async => mockedCharactersSuccessResponse);

    //Assert
    final result = await usecase.loadCharacters();

    //Expect
    expect(result.isSuccess(), true);
    result.fold((success) {
      expect(success, isA<List<CharacterModel>>());
    }, (error) {
      fail('test failed');
    });
  });

  test('loadCharacters returns Failure with response on non-200 status code',
      () async {
    // Arrange
    when(() => client.get(any()))
        .thenAnswer((_) async => mockedCharactersErrorResponse);

    //Assert
    final result = await usecase.loadCharacters();

    //Expect
    expect(result.isError(), true);
    result.fold((success) {
      fail('test failed');
    }, (error) {
      expect(error, isA<CustomResponse>());
      expect(error.statusCode != 200, true);
    });
  });
}
