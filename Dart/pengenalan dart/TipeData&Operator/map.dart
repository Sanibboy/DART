void main() {
  Map mahasiswa = {
    'nama': 'muhammad sani',
    'umur': 23,
    'nim': 6404211074,
  };

  print(mahasiswa);

  // menmapilkan value dari key
  print(mahasiswa['nama']);

  // menampilkan keys yang terdapat pada map
  print(mahasiswa.keys);

  // menampilkan values yang terdapat pada map
  print(mahasiswa.values);

  // mengecek apakah map memiliki key tertentu
  print(mahasiswa.containsKey('nama'));

  // menampilkan apakah map memeiliki values tertentu
  print(mahasiswa.containsValue('sani'));

  // mengembalikan panjang map
  print(mahasiswa.length);

  // menghapus values da key berdasarkna key
  print(mahasiswa.remove('nama'));
  print(mahasiswa);

  // mengubah value map
  mahasiswa['umur'] = 100;
  print(mahasiswa);
}
