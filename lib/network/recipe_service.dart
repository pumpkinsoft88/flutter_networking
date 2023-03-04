// ignore_for_file: unused_import

import 'package:http/http.dart';
import 'recipe_service_keys.dart';

class RecipeService {
  Future getData(String url) async {
    final response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print(response.body);
    }
  }

  Future<dynamic> getRecipes(String query, int from, int to) async {
    final recipeData = await getData(
        '$API_URL?app_id=$API_ID&app_key=$API_KEY&q=$query&from=$from&&to=$to');
    return recipeData;
  }
}
