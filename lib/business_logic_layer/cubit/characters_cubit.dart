import 'package:breaking_bad_app/business_logic_layer/cubit/characters_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data_layer/models/characters.dart';
import '../../data_layer/repositories/characters_repository.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<Character> characters = [];
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getAllCharacters()
  {
    charactersRepository.getAllCharacters().then((characters)
    {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });
    return characters;
  }
}
