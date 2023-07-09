import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty/app/features/character/presenter/bloc/character_controller.dart';
import 'package:rick_morty/app/features/character/presenter/bloc/character_state.dart';
import 'package:rick_morty/app/features/character/presenter/components/character_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterController, CharactersState>(
        builder: (context, state) {
      final controller = context.read<CharacterController>();
      return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(
              'Rick and Morty',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            actions: [
              IconButton(
                  onPressed: () => controller.loadCharacters(),
                  icon: const Icon(
                    Icons.refresh_rounded,
                    size: 28,
                  ))
            ],
          ),
          body: switch (state) {
            CharacterInitial() => const Center(child: Text('Empty')),
            CharacterLoading() =>
              const Center(child: CircularProgressIndicator()),
            CharacterSuccess(characters: final characters) =>
              CharacterList(characters: characters),
            CharacterFailure() => const Center(child: Text('Error')),
          });
    });
  }
}
