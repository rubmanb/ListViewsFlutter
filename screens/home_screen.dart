import 'package:fl_components/screens/listview2_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('HomeScreen'),
          ),
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.ads_click_sharp),
            title: const Text('Nombre de la Ruta:'),
            onTap: () {
              final route = MaterialPageRoute(
                builder: (context) => const ListView2Screen(),
              );
              Navigator.push(context, route);

              // Navigator.pushNamed(context, 'ListView2_screen');
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
