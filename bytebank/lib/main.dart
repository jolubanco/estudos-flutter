import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),
        appBar: AppBar(title:Text('Transferências')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Icon(Icons.add),
        ),
        ),
      ),
  );
}
  class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
           Itemtransferencia(Transferencia(100.0,1000)),
           Itemtransferencia(Transferencia(200.0,1000)), 
          ],
    );
  }
  }

  class Itemtransferencia extends StatelessWidget {

    final Transferencia _transferencia;

  Itemtransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
              child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text(_transferencia.valor.toString()),
                subtitle: Text(_transferencia.numeroConta.toString()),
              ),
            );
  }
    
  }

  class Transferencia {
    final double valor;
    final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

  }
    


