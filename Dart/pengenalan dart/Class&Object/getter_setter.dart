/* getter setter digunakan untuk menetapkan sebuah nilai pada properti
dan bisa diambil kembali nilainya*/

void main() {
  RekeningBank rekeningsani = new RekeningBank();
  rekeningsani.namaPemilik = 'muhammad sani';
  rekeningsani.namaBank = 'MANDIRI';
  rekeningsani.saldo = 1000000;

  print(rekeningsani.saldo);
  print(rekeningsani.namaBank);
  print(rekeningsani.namaPemilik);

  rekeningsani.ceksaldo();
  print('-------------------------');

  // membuat objek baru
  RekeningBank rekeningsan = new RekeningBank(
      namaPemilik: 'muhammad sani', namaBank: 'BRI', saldo: 50000000);

  print(rekeningsan.namaPemilik);
  print(rekeningsan.namaBank);
  print(rekeningsan.saldo);
  rekeningsan.ceksaldo();
  print('---------------------');

  RekeningBank rekeningsans = new RekeningBank(
    namaPemilik: 'sani',
    namaBank: 'Bank BCA',
    saldo: 15000000,
  );

  print(rekeningsan.getPemilik);
  print(rekeningsan.getBank);
  print(rekeningsan.saldo);
  rekeningsan.setSaldo = 25000000;
  print(rekeningsan.saldo);
  rekeningsan.setNamaPemilik = 'muhammad sani';
  rekeningsan.setNamaBank = 'BRI';
  print(rekeningsan.getPemilik);
  print(rekeningsan.getBank);
  print(rekeningsan.getSaldo);
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  int saldo;

  // membuat set getter setter
  set setNamaPemilik(var nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String namabank) {
    this.namaBank = namabank;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String get getPemilik {
    return namaPemilik;
  }

  String get getBank {
    return namaBank;
  }

  int get getSaldo {
    return saldo;
  }

  //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional
  RekeningBank({this.namaPemilik, this.namaBank, this.saldo = 0});

  ceksaldo() {
    print('Saldo saat ini adalah : $saldo');
  }

  transfer() {
    print('Transfer ');
  }

  ambilsaldo() {
    print('ambil saldo');
  }
}
