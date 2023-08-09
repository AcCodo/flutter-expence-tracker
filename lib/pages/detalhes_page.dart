import 'package:expense_tracker/components/conta_Item.dart';
import 'package:expense_tracker/models/transacao.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetalhesPage extends StatelessWidget {
  final Transacao transacao;
  const DetalhesPage({Key? key, required this.transacao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(transacao.descricao), backgroundColor: transacao.categoria.cor),
      body: ListView(
        children: [
          ContaItem(conta: transacao.conta),
          ListTile(
            title: const Text('Tipo de Transação'),
            subtitle: Text(transacao.tipoTransacao.name),
          ),
          ListTile(
            title: const Text('Valor'),
            subtitle: Text(NumberFormat.simpleCurrency(locale: 'pt_BR').format(transacao.valor)),
          ),
          ListTile(
            title: const Text('Categoria'),
            subtitle: Text(transacao.categoria.descricao),
          ),
          ListTile(
            title: const Text('Data do Lançamento'),
            subtitle: Text(DateFormat('MM/dd/yyyy').format(transacao.data)),
          ),
          ListTile(
            title: const Text('Observação'),
            subtitle: Text(transacao.detalhes),
          )
        ],
      ),
    );
  }
}
