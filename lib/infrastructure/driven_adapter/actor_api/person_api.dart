import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../domain/models/person/person.dart';

class PersonApi {

  static const apiKey = '449a79e6936db938259c1bdb7d87fcd1';

  Future<List<Person>> getInfoPerson(actorId) async {
    final response = await http.get(Uri.parse('https://api.themoviedb.org/3/person/$actorId?api_key=$apiKey'));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body) as List;
      return decodedData.map((person) => Person.fromJson(person)).toList();
    } else {
      throw Exception();
    }
  }

}