import 'package:favorite_places/models/place.dart';
import 'package:riverpod/riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super([]);
  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }

  final userPlacesProvider =
      StateNotifierProvider((ref) => UserPlacesNotifier());
}
