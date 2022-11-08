import 'package:breaking_bad_app/business_logic_layer/cubit/characters_cubit.dart';
import 'package:breaking_bad_app/constants/strings.dart';
import 'package:breaking_bad_app/data_layer/web_services/characters_web_serveces.dart';
import 'package:breaking_bad_app/presentation_layer/screens/character_details_screen.dart';
import 'package:breaking_bad_app/presentation_layer/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data_layer/repositories/characters_repository.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: const CharactersScreen(),
          ),
        );
      case characterDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharacterDetailsScreen());
    }
    return null;
  }
}
