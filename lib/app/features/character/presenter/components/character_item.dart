import 'package:flutter/material.dart';
import 'package:rick_morty/app/features/character/domain/model/character_model.dart';

class CharacterItem extends StatelessWidget {
  final CharacterModel character;
  const CharacterItem({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.onPrimary.withOpacity(0.9),
            Theme.of(context).colorScheme.primary.withOpacity(0.7),
            Theme.of(context).colorScheme.primary,
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Image.network(
              character.image,
              height: 120,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    maxLines: 3,
                    character.name,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                  ),
                ),
                Visibility(
                  visible: character.type.isNotEmpty,
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      Icon(
                        Icons.science_rounded,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          maxLines: 3,
                          character.type,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: character.species.isNotEmpty,
                  child: Row(
                    children: [
                      const SizedBox(width: 8),
                      Icon(
                        Icons.face_rounded,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          maxLines: 3,
                          character.species,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 8),
                    Icon(
                      character.gender == 'Male'
                          ? Icons.male_rounded
                          : Icons.female_rounded,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                    const SizedBox(width: 4),
                    Flexible(
                      child: Text(
                        maxLines: 3,
                        character.gender,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
