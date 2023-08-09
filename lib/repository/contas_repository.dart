import 'package:expense_tracker/models/conta.dart';

class ContasRepository {
  List<Conta> listarContas() {
    return [
      Conta(
          id: '1',
          bancoId: 'nubank',
          descricao: 'Conta principal',
          tipoConta: TipoConta.contaCorrente),
      Conta(
          id: '2',
          bancoId: 'bb',
          descricao: 'Conta de investimentos',
          tipoConta: TipoConta.contaInvestimento),
      Conta(
          id: '3',
          bancoId: 'inter',
          descricao: 'Conta Poupança',
          tipoConta: TipoConta.contaPoupanca)
    ];
  }
}
