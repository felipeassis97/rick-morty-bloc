import 'package:result_dart/result_dart.dart';
import 'package:rick_morty/app/features/character/domain/model/character_model.dart';
import 'package:rick_morty/app/features/character/domain/usecase/load_characters.dart';
import 'package:rick_morty/app/services/http/custom_client.dart';
import 'package:rick_morty/app/services/http/custom_response.dart';

class LoadCharactersImpl implements LoadCharacters {
  final CustomClient client;
  LoadCharactersImpl({required this.client});

  @override
  AsyncResult<List<CharacterModel>, CustomResponse> loadCharacters() async {
    final response = await client
        .get(Uri.parse('https://rickandmortyapi.com/api/character/'));

    if (response.statusCode == 200) {
      final characterList = List.from(response.body['results'])
          .map((character) => CharacterModel.fromMap(character))
          .toList();

      return Success(characterList);
    }

    return Failure(response);
  }
}
