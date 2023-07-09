import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_morty/app/features/character/domain/usecase/load_characters.dart';
import 'package:rick_morty/app/features/character/presenter/bloc/character_state.dart';

class CharacterController extends Cubit<CharactersState> {
  final charactersService = GetIt.instance.get<LoadCharacters>();

  CharacterController() : super(CharacterInitial()) {
    loadCharacters();
  }

  Future<void> loadCharacters() async {
    emit(CharacterLoading());
    final result = await charactersService.loadCharacters();
    emit(CharacterSuccess(characters: result));
  }
}
