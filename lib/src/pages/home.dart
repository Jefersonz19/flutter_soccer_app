import 'package:flutter/material.dart';
import 'package:flutter_soccer_app/src/assets/box.dart';
import '../settings/settings_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

   static const routeName = '/lib/src/settings/settings_view.dart';

  @override
  State <Home> createState() => _HomeState();
}

class _HomeState extends State <Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: const Text('Home Soccer App Test'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
                Navigator.restorablePushNamed(context, Settings.routeName);
                        //  Navigator.pushNamed(context,  "/scndroute");
              },
            ),
        ],
      ),
      body: Center(
        child: Column(
          children: [ ElevatedButton(
          onPressed:(){ 
            Navigator.pushNamed(context,  "/firstroute");
        }, 
        child: const Text('Next Page',
          style: TextStyle(
            fontFamily: 'rbold',
            //fontWeight: ,
            //fontStyle: ,
            color: Colors.white,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.double
          )), 
        ),
       const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Colors.grey)
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: TextFormField(
            style: const TextStyle(fontSize: 20, color: Colors.black),
            decoration: const InputDecoration(border: InputBorder.none),
          )
        ),  
        /* SizedBox(
          height: 250.0,
          width: 450.0,
          child: Image.asset('assets/soccer.png', fit: BoxFit.fitWidth)
        ) */
        ],
       ), 
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: (){
              Navigator.pushNamed(context,  "/teamlist");
              //backgroundColor: Colors.amber;
              //child: const Icon(Icons.real_estate_agent_rounded);
            },  child: const Text('List All'),
            )
        ]),
    );
  }
}

class HomePage extends StatelessWidget {
  const  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Mybox(
          child: Text('Box'), 
          color: Colors.deepPurple[200],
        ),
      ),
    );
  }
}


