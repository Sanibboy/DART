void main() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };
  // bollean
  var isLoggedIn = false;

  print(isLoggedIn);

  // contoh print 1
  print(name);
  print(year);
  print(antennaDiameter);
  print(flybyObjects);
  print(image);

  // contoh print 2
  print('nama = $name');
  // contoh print menggunakan index
  print('flybyObjects = ${flybyObjects[0]}');
}
