import 'package:flutter/material.dart';
import 'package:rick_morty/app/features/character/domain/model/character_model.dart';
import 'package:rick_morty/app/features/character/presenter/components/character_item.dart';

class CharacterList extends StatelessWidget {
  final List<CharacterModel> characters;
  const CharacterList({Key? key, required this.characters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        itemCount: characters.length,
        itemBuilder: (context, index) {
          final character = characters[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: CharacterItem(
              character: character,
            ),
          );
        });
  }
}
