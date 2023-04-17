import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final List options = const [
    'Flash',
    'Batman',
    'Superman',
    'Wonder-woman',
    'Aquaman'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('ListView 2')),
        elevation: 0,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (_, i) => ListTile(
                title: Text(options[i]),
                trailing:
                    const Icon(Icons.arrow_drop_down, color: Colors.lightBlue),
                onTap: () {
                  final hero = options[i];
                  print(hero);
                },
              ),
          separatorBuilder: (_, __) => const Divider()),
    );
  }
}
