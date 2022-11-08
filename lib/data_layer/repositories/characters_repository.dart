import 'package:breaking_bad_app/data_layer/models/characters.dart';
import 'package:breaking_bad_app/data_layer/web_services/characters_web_serveces.dart';

class CharactersRepository
{
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharacters() async
  {
    final characters = await charactersWebServices.getAllCharacters();
    return characters.map((character) => Character.fromJson(character)).toList();
  }
}