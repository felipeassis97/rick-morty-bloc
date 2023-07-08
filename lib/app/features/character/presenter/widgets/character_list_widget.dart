import 'package:flutter/material.dart';
import 'package:rick_morty/app/features/character/domain/model/character_model.dart';

class CharacterListWidget extends StatelessWidget {
  final List<CharacterModel> characters;
  const CharacterListWidget({Key? key, required this.characters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          final character = characters[index];

          return Text(character.name);
        });
  }
}
