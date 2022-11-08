import 'package:breaking_bad_app/constants/strings.dart';
import 'package:breaking_bad_app/data_layer/models/characters.dart';
import 'package:dio/dio.dart';

class CharactersWebServices
{

  late Dio dio;

  CharactersWebServices ()
  {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000, // 20 Seconds
      receiveTimeout: 20 * 1000, // 20 Seconds
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async
  {
    try
    {
      Response response = await dio.get('characters');
      print(response.data.toString());
      return response.data;
    }catch(e)
    {
      print(e.toString());
      return [];
    }

  }

}