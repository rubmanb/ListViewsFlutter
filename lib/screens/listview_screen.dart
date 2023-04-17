import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final List options = const ['Flash', 'Batman', 'Superman', 'Wonderwoman'];

  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((heroesDC) => ListTile(
                      title: Text(heroesDC),
                      trailing: const Icon(Icons.arrow_right),
                    ))
                .toList()
          ],
        ));
  }
}
