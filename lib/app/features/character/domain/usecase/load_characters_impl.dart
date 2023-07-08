import 'package:rick_morty/app/features/character/domain/model/character_model.dart';
import 'package:rick_morty/app/features/character/domain/usecase/load_characters.dart';
import 'package:rick_morty/app/services/http/custom_client.dart';

class LoadCharactersImpl implements LoadCharacters {
  final CustomClient client;
  LoadCharactersImpl({required this.client});

  @override
  Future<List<CharacterModel>> loadCharacters() async {
    final response = await client
        .get(Uri.parse('https://rickandmortyapi.com/api/character/'));

    return List.from(response.body['results'])
        .map((character) => CharacterModel.fromMap(character))
        .toList();
  }
}
