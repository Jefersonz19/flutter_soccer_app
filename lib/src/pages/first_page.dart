import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage ({super.key});

  @override
  State <FirstPage> createState() =>  _FirstPageState();
}

class _FirstPageState extends State <FirstPage> {
  final items = ['Opcion 1', 'Opcion 2', 'Opcion 3', 'Opcion 4'];
  String? dropdownValue = 'Opcion 1'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: const Text('First Page'), centerTitle: true),

      body: Center (
        child: Column (children: [
        DropdownButton(
        items: <String>['Opcion 1', 'Opcion 2', 'Opcion 3', 'Opcion 4', 'Opcion 5', 'Opcion 6']
        .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),   
          );
        }).toList(),
        icon: Icon(Icons.admin_panel_settings),
        iconSize: 20,
        elevation: 10,
        underline: Container(
          height: 2,
          color: Colors.blue,
        ),
        style: TextStyle(color: Colors.red),
        value: dropdownValue,
        onChanged: (String? valueIn) {
          setState(() {
            dropdownValue = valueIn;
          });
        },
       ),
      ]),
     ),
     floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context,  "/scndroute");
            }, child: const Text('Go to Page'), 
        ),
        ]),
    );
   }
}