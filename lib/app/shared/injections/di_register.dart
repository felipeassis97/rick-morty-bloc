import 'package:get_it/get_it.dart';
import 'package:rick_morty/app/features/character/domain/usecase/load_characters.dart';
import 'package:rick_morty/app/features/character/domain/usecase/load_characters_impl.dart';
import 'package:rick_morty/app/services/http/custom_client.dart';
import 'package:rick_morty/app/services/http/custom_client_impl.dart';

void diSetup() {
  final getIt = GetIt.instance;

//http
  getIt.registerFactory<CustomClient>(() => CustomClientImpl());

//usecases
  getIt.registerFactory<LoadCharacters>(
    () => LoadCharactersImpl(client: getIt<CustomClient>()),
  );
}
