
import '../../data_layer/models/characters.dart';

abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState
{
  final List<Character> characters;

  CharactersLoaded(this.characters);
}
