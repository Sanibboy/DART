void main() {
  String nama = 'sans Seafood';
  int tahun = 2000;
  String pemilik = 'muhammad sani';
  String alamat = 'Jl.antara';
  int telepon = 082297157100;
  bool status = true;
  // menggunakan List dan Map untuk membuat daftar makanan
  List<Map> daftarmakanan = [
    {'nama': 'Kepiting Rebus', 'harga': 40.000},
    {'nama': 'Nasi Goreng', 'harga': 10.000},
    {'nama': 'Udang Asam Manis', 'harga': 45.000},
    {'nama': 'Sate Kambing', 'harga': 25.000},
  ];

  // menggunakan List dan Map untuk membuat daftar makanan
  List<Map> daftarminuman = [
    {'nama': 'Es Jeruk', 'harga': 7.000},
    {'nama': 'Es Kelapa', 'harga': 5.000},
    {'nama': 'Es Sirup', 'harga': 5.000},
    {'nama': 'Es Leci', 'harga': 7.000},
  ];

  // membuat sebuah map untuk mempermudah output
  Map seafood = {
    'nama': nama,
    'tahun': tahun,
    'pemilik': pemilik,
    'alamat': alamat,
    'telepon': telepon,
    'status': status,
    'daftarmakanan': daftarmakanan,
    'daftarminuman': daftarminuman
  };

  print(seafood);
}
