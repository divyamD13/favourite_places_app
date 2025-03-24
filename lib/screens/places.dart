import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [IconButton(onPressed: () {
          // Navigator.of(context).push(
          //       MaterialPageRoute(
          //         builder: (ctx) => const AddPlaceScreen(),
          //       ),
          //     );
        }, 
        icon: Icon(Icons.add))],
      ),
    );
  }
}
