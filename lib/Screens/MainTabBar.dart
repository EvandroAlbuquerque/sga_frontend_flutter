import 'package:flutter/material.dart';
import 'package:sga_frontend_flutter/Screens/Tabs/ActionTabContainer.dart';
import 'package:sga_frontend_flutter/Screens/Tabs/CarelessPointTabContainer.dart';
import 'package:sga_frontend_flutter/Screens/Tabs/DonationTabContainer.dart';
import 'package:sga_frontend_flutter/Screens/Tabs/InstitutionTabContainer.dart';
import 'package:sga_frontend_flutter/Screens/Tabs/VolunteerTabContainer.dart';

class MainTabBar extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.call_to_action),
                ),
                Tab(
                  icon: Icon(Icons.card_giftcard),
                ),
                Tab(
                  icon: Icon(Icons.location_city),
                ),
                Tab(
                  icon: Icon(Icons.place),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
            title: Text('Sistema Gestor de Assistências'),
          ),
          body: TabBarView(
            children: [
              ActionTabContainer(formKey: _formKey),
              DonationTabContainer(formKey: _formKey),
              InstitutionTabContainer(formKey: _formKey),
              CarelessPointTabContainer(formKey: _formKey),
              VolunteerTabContainer(formKey: _formKey),
            ],
          ),
        ),
      ),
    );
  }
}
