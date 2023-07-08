import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty/app/features/character/presenter/bloc/character_controller.dart';
import 'package:rick_morty/app/features/character/presenter/bloc/character_state.dart';
import 'package:rick_morty/app/features/character/presenter/widgets/character_list_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('My Home Page'),
      ),
      body: BlocBuilder<CharacterController, CharactersState>(
          builder: (context, state) {
        return switch (state) {
          CharacterInitial() => const Center(child: Text('Empty')),
          CharacterLoading() =>
            const Center(child: CircularProgressIndicator()),
          CharacterSuccess(characters: final characters) =>
            CharacterListWidget(characters: characters),
          CharacterFailure() => const Center(child: Text('Error')),
        };
      }),
    );
  }
}
