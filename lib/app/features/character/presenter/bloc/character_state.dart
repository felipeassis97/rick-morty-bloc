import 'package:rick_morty/app/features/character/domain/model/character_model.dart';

sealed class CharactersState {}

final class CharacterInitial extends CharactersState {}

final class CharacterLoading extends CharactersState {}

final class CharacterSuccess extends CharactersState {
  final List<CharacterModel> characters;
  CharacterSuccess({required this.characters});
}

final class CharacterFailure extends CharactersState {}
