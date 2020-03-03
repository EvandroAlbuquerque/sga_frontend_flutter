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
//                Tab(text: "Ações Sociais",),
//                Tab(text: "Doações",),
//                Tab(text: "Instituições Sociais",),
//                Tab(text: "Pontos Carentes",),
//                Tab(text: "Voluntários",),
              ],
            ),
            title: Text('Sistema Gestor de Assistências'),
          ),
          body: TabBarView(
            children: [
              Container(
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("Ações Sociais", style: TextStyle(color: Colors.black),),
                      centerTitle: true,
                      backgroundColor: Colors.transparent,
                    ),
                    body: DataTable(
                      columns: [
                        DataColumn(label: Text('Horário')),
                        DataColumn(label: Text('Endereço')),
                        DataColumn(label: Text('Obs')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('13:00')),
                          DataCell(Text('Rua Barão do Triunfo, 13, Varadouro')),
                          DataCell(Text('Testando essa zoeira'))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('14:00')),
                          DataCell(Text('Avenida Epitácio Pessoa, 20, Centro')),
                          DataCell(Text('Testando essa zoeira 2'))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('15:00')),
                          DataCell(Text('Avenida Pedro II, 30, Centro')),
                          DataCell(Text('Testando essa zoeira 3'))
                        ]),
                      ],
                    ),
                    floatingActionButton: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add)),
                  )),
              Container(
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("Doações", style: TextStyle(color: Colors.black),),
                      centerTitle: true,
                      backgroundColor: Colors.transparent,
                    ),
                    body: DataTable(
                      columns: [
                        DataColumn(label: Text('Horário')),
                        DataColumn(label: Text('Endereço')),
                        DataColumn(label: Text('Obs')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('13:00')),
                          DataCell(Text('Rua Barão do Triunfo, 13, Varadouro')),
                          DataCell(Text('Testando essa zoeira'))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('14:00')),
                          DataCell(Text('Avenida Epitácio Pessoa, 20, Centro')),
                          DataCell(Text('Testando essa zoeira 2'))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('15:00')),
                          DataCell(Text('Avenida Pedro II, 30, Centro')),
                          DataCell(Text('Testando essa zoeira 3'))
                        ]),
                      ],
                    ),
                    floatingActionButton: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.add)),
                  )),
              Container(
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("Instituições Sociais", style: TextStyle(color: Colors.black),),
                      centerTitle: true,
                      backgroundColor: Colors.transparent,
                    ),
                    body: DataTable(
                      columns: [
                        DataColumn(label: Text('Horário')),
                        DataColumn(label: Text('Endereço')),
                        DataColumn(label: Text('Obs')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('13:00')),
                          DataCell(Text('Rua Barão do Triunfo, 13, Varadouro')),
                          DataCell(Text('Testando essa zoeira'))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('14:00')),
                          DataCell(Text('Avenida Epitácio Pessoa, 20, Centro')),
                          DataCell(Text('Testando essa zoeira 2'))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('15:00')),
                          DataCell(Text('Avenida Pedro II, 30, Centro')),
                          DataCell(Text('Testando essa zoeira 3'))
                        ]),
                      ],
                    ),
                    floatingActionButton: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.add)),
                  )),
              Container(
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("Pontos Carentes", style: TextStyle(color: Colors.black),),
                      centerTitle: true,
                      backgroundColor: Colors.transparent,
                    ),
                    body: DataTable(
                      columns: [
                        DataColumn(label: Text('Horário')),
                        DataColumn(label: Text('Endereço')),
                        DataColumn(label: Text('Obs')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('13:00')),
                          DataCell(Text('Rua Barão do Triunfo, 13, Varadouro')),
                          DataCell(Text('Testando essa zoeira'))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('14:00')),
                          DataCell(Text('Avenida Epitácio Pessoa, 20, Centro')),
                          DataCell(Text('Testando essa zoeira 2'))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('15:00')),
                          DataCell(Text('Avenida Pedro II, 30, Centro')),
                          DataCell(Text('Testando essa zoeira 3'))
                        ]),
                      ],
                    ),
                    floatingActionButton: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.add)),
                  )),
              Container(
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("Voluntários", style: TextStyle(color: Colors.black),),
                      centerTitle: true,
                      backgroundColor: Colors.transparent,
                    ),
                    body: DataTable(
                      columns: [
                        DataColumn(label: Text('Horário')),
                        DataColumn(label: Text('Endereço')),
                        DataColumn(label: Text('Obs')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('13:00')),
                          DataCell(Text('Rua Barão do Triunfo, 13, Varadouro')),
                          DataCell(Text('Testando essa zoeira'))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('14:00')),
                          DataCell(Text('Avenida Epitácio Pessoa, 20, Centro')),
                          DataCell(Text('Testando essa zoeira 2'))
                        ]),
                        DataRow(cells: [
                          DataCell(Text('15:00')),
                          DataCell(Text('Avenida Pedro II, 30, Centro')),
                          DataCell(Text('Testando essa zoeira 3'))
                        ]),
                      ],
                    ),
                    floatingActionButton: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.add)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
