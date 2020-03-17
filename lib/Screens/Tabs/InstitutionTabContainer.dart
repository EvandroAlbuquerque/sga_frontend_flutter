import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstitutionTabContainer extends StatelessWidget {
  const InstitutionTabContainer({
    Key key,
    @required GlobalKey<FormState> formKey,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Instituições Sociais",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: <Widget>[
            DataTable(
              columns: [
                DataColumn(label: Text('Horário'),),
                DataColumn(label: Text('Endereço'),),
                DataColumn(label: Text('Obs'),),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('13:00'),),
                  DataCell(Text('Rua Barão do Triunfo, 13, Varadouro'),),
                  DataCell(Text('Testando essa zoeira'),)
                ]),
                DataRow(cells: [
                  DataCell(Text('14:00'),),
                  DataCell(Text('Avenida Epitácio Pessoa, 20, Centro'),),
                  DataCell(Text('Testando essa zoeira 2'),)
                ]),
                DataRow(cells: [
                  DataCell(Text('15:00'),),
                  DataCell(Text('Avenida Pedro II, 30, Centro'),),
                  DataCell(Text('Testando essa zoeira 3'),)
                ]),
              ],
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Informe os dados da ação social'),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Horário',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Digite o horário';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Rua',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Digite o nome da rua';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Nº',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Bairro',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Digite o nome do bairro';
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {}
                      },
                      child: Text('Registrar'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: Icon(Icons.add),),
      ),);
  }
}