import 'package:rick_morty/app/features/character/domain/model/character_model.dart';

abstract interface class LoadCharacters {
  Future<List<CharacterModel>> loadCharacters();
}
