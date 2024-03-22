void main() {
  RekeningBank rekeningsani = new RekeningBank();
  rekeningsani.namaPemilik = 'muhammad sani';
  rekeningsani.namaBank = 'MANDIRI';
  rekeningsani.saldo = 10000000;

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
    namaPemilik: 'muhammad sani',
    namaBank: 'Bank BCA',
    saldo: 15000000,
  );

  print(rekeningsans.getPemilik);
  print(rekeningsans.getBank);
  print(rekeningsans.saldo);
  rekeningsans.setSaldo = 25000000;
  print(rekeningsans.saldo);
  rekeningsans.setNamaPemilik = 'muhammad sani';
  rekeningsans.setNamaBank = 'BRI';
  print(rekeningsans.getPemilik);
  print(rekeningsans.getBank);
  print(rekeningsans.getSaldo);
  print('---------------------');

  // membuat objek baru untuk multiple constructor
  // jika .Mandiri nya dihilangkan maka nilai nya akan null
  RekeningBank rekeningMandiri =
      new RekeningBank.Mandiri(namaPemilik: 'muhammad sani', saldo: 50000000);
  print(rekeningMandiri
      .getBank); //akan ditetapkan menjadi Mandiri karena nilai Bank nya tidak diisi
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

  /*membuat multiple constructor, ini adalah class barunya
  disini akan dibuat jika nama bank nya tidak diisi maka nilai bank nya akan otomatis 'Mandiri'*/
  RekeningBank.Mandiri(
      {this.namaPemilik, this.namaBank = 'Mandiri', this.saldo = 0});

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
