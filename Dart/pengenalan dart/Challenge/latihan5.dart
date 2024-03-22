void main() {
  EWallet DOMPETSANI = new EWallet('muhammadsani');
  print('----Nilai Awal----');
  print(DOMPETSANI.getNama);
  print(DOMPETSANI.getSaldo);
  print(DOMPETSANI.getMutasi);
  print('----Request----');
  DOMPETSANI.Request(2000000);
  print(DOMPETSANI.getSaldo);
  print(DOMPETSANI.getMutasi);
  print('---- Transfer----');
  DOMPETSANI.transfer(500000);
  print(DOMPETSANI.getSaldo);
  print(DOMPETSANI.getMutasi);
}

class EWallet {
  String namaPemilik;
  int saldo = 0;
  List mutasi = [];

  get getNama {
    return namaPemilik;
  }

  get getSaldo {
    return saldo;
  }

  get getMutasi {
    return mutasi;
  }

  set setNama(String nama) {
    this.namaPemilik = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  set setMutasi(List mutasi) {
    this.mutasi = mutasi;
  }

  EWallet(this.namaPemilik);

  transfer(int nominal) {
    saldo -= nominal;
    addMutasi('Transfer $nominal');
  }

  Request(int nominal) {
    saldo = saldo + nominal;
    addMutasi('Request $nominal');
  }

  addMutasi(String transaksi) {
    mutasi.add(transaksi);
  }
}
