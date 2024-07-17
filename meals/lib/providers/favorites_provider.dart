import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
//since meal is already a fav, we need to remove it from the list;

//state = [a,b,c,d,e]
//meal = b
      state = state.where((element) => element.id != meal.id).toList();
      return false;
//state= [a,c,d,e]
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

var favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
