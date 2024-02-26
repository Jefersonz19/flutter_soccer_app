import 'package:flutter/material.dart';

class listpage extends StatefulWidget {
  const listpage({super.key});

  @override
  State<listpage> createState() => _listpageState();
}

class _listpageState extends State<listpage> {
  List<Map<String, dynamic>> _Teamlist = [
    {"id":1, "name": "Manchester United", "Country": "England" },
    {"id":2, "name": "Liverpool", "Country": "England" },
    {"id":3, "name": "Atletico Nacional", "Country": "Colombia" },
    {"id":4, "name": "Bayern Munich", "Country": "Germany" },
    {"id":5, "name": "Real Madrid", "Country": "Spain" },
    {"id":6, "name": "Independiente Medellin", "Country": "Colombia" },
    {"id":7, "name": "Manchester City", "Country": "England" },
    {"id":8, "name": "Sevilla", "Country": "Spain" },
    {"id":9, "name": "Milan", "Country": "Italy" },
    {"id":10, "name": "Paris Saint German", "Country": "France" },
    {"id":11, "name": "Juventus", "Country": "Italy" },
    {"id":12, "name": "Marsella", "Country": "France" },
    {"id":13, "name": "Napoli", "Country": "Italy" },
  ];

  List<Map<String, dynamic>> _foundTeams = [];
  @override
  void initState() {
    _foundTeams = _Teamlist;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty){
      results = _Teamlist; 
    } else {
      results = _Teamlist
        .where((element) => 
            element["name"].toLowerCase().contains(enteredKeyword.toLowerCase())
            )
            .toList();
    }

    setState(() {
      _foundTeams = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list of Soccer Teams'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (value) => _runFilter(value),
            decoration: InputDecoration(
              labelText: 'Search', suffixIcon: Icon(Icons.search)),
          ),
          const SizedBox(
            height: 20,
          ),
        Expanded(
          child: ListView.builder(
          itemCount: _foundTeams.length,
          itemBuilder: (context, index) => Card(
            key: ValueKey(_foundTeams[index]["id"]),
            color: Colors.blue,
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Text(
                _foundTeams[index]["id"].toString(),
                style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
                title: Text(_foundTeams[index]['name'],
                  style: TextStyle(color: Colors.white)),
                subtitle: Text(_foundTeams[index]["Country"],
                  style: TextStyle(color: Colors.white)),
                ),
            ),
          ),
          ),
         ]
        ),
      ),
    );
  }
}