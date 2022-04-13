import 'package:flutter/foundation.dart';
import 'package:flutter_native_features/models/place.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }
}
