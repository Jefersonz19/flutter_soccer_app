import 'package:flutter/material.dart';

class ScndPage extends StatefulWidget {
  const ScndPage({super.key});

  @override
  State <ScndPage> createState() =>  _ScndPageState();
}

class  _ScndPageState extends State <ScndPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body:
      //const Center(child: Text('Scnd Page')),
      ListView(
         children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: const ListTile(
              title: const Text('Teams List'),
              subtitle: const Text('By: Jefer Zapata'),
              leading: const Icon(
                Icons.add_to_queue,
                color: Colors.lightBlue,
              ),
            ),
          )
         ],
      ),
   );
  }
}