import 'package:result_dart/result_dart.dart';
import 'package:rick_morty/app/features/character/domain/model/character_model.dart';
import 'package:rick_morty/app/services/http/custom_response.dart';

abstract interface class LoadCharacters {
  AsyncResult<List<CharacterModel>, CustomResponse> loadCharacters();
}
