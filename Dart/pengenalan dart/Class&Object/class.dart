// class adalah sebuah template atau blueprint
// sedangkan object adalah hasil dari realisasi class/object nyata
// di dalam class terdapat atribut/properti dan method/function

void main() {
  RekeningBank REKENINGSANI = new RekeningBank();
  REKENINGSANI.namaPemilik = 'muhammad sani';
  REKENINGSANI.namaBank = 'MANDIRI';
  REKENINGSANI.saldo = 10000000;

  print(REKENINGSANI.saldo);
  print(REKENINGSANI.namaBank);
  print(REKENINGSANI.namaPemilik);

  REKENINGSANI.ceksaldo();

  // membuat objek baru
  RekeningBank rekeningsani = new RekeningBank(
      namaPemilik: 'muhammad sani', namaBank: 'BRI', saldo: 50000000);

  print(rekeningsani.saldo);
  print(rekeningsani.ceksaldo());
  print(rekeningsani.namaBank);
  print(rekeningsani.namaPemilik);
}

class RekeningBank {
  var namaPemilik;
  var namaBank;
  var saldo;

  RekeningBank(
      {this.namaPemilik,
      this.namaBank,
      this.saldo}); //jika hanya dengan () objek saldonya harus diisi, sedangkan dengan menambahkan {} maka saldo menjadi optional

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
