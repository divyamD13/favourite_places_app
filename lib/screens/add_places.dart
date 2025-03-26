import 'package:favourite_places_app/providers/users_place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();

  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  void _savePlace(){
    final enteredText= _titleController.text;
    if(enteredText.isEmpty){
      return;
    }
    ref.read(userPlacesProvider.notifier).addPlace(enteredText);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add new Place')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: _titleController,
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed:_savePlace,
              label: const Text('Add place'),
            ),
          ],
        ),
      ),
    );
  }
}
