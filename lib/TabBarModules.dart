import 'package:flutter/material.dart';

class TabBarModules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Ações Sociais",),
                Tab(text: "Doações",),
                Tab(text: "Instituições",),
                Tab(text: "Pontos Carentes",),
                Tab(text: "Voluntários",),
              ],
            ),
            title: Text('Sistema Gestor de Assistências'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.call_to_action),
              Icon(Icons.card_giftcard),
              Icon(Icons.location_city),
              Icon(Icons.place),
              Icon(Icons.person),
            ],
          ),
        ),
      ),
    );
  }
}