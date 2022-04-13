import 'package:flutter/material.dart';
import 'package:flutter_native_features/providers/great_places.dart';
import 'package:flutter_native_features/screens/add_place_screen.dart';
import 'package:flutter_native_features/screens/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const routeName = '/add-place';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              primarySwatch: Colors.indigo, accentColor: Colors.amber),
          home: const PlaceListScreen(),
          routes: {
            AddPlaceScreen.routeName: (context) => const AddPlaceScreen(),
          }),
    );
  }
}
