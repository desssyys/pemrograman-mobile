(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var before = (10, 20);
  print('Sebelum tukar: $before');
  var after = tukar(before);
  print('Sesudah tukar: $after');

  (String, int) mahasiswa;
  mahasiswa = ('Desy Puspita', 244107060145);
  print(mahasiswa);

  var mahasiswa2 = ('Desy Dwi Puspita', a: 244107060145, b: true, 'SIB-2E');

  print(mahasiswa2.$1); // nama
  print(mahasiswa2.a);  // NIM
  print(mahasiswa2.b);  // status aktif
  print(mahasiswa2.$2); // kelas
}

