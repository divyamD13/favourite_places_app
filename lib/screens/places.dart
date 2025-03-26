import 'package:favourite_places_app/providers/users_place.dart';
import 'package:flutter/material.dart';
import 'package:favourite_places_app/screens/add_places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces=ref.watch(userPlacesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => AddPlaceScreen(),
                    ),
                  );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
