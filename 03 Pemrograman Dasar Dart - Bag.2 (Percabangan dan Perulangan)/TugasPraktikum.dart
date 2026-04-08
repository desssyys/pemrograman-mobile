void main() {
  String nama = "Desy Dwi Puspita";
  String nim = "244107060145";

  for (int i = 0; i <= 201; i++) {
    bool prima = true;

    if (i < 2) {
      prima = false;
    } else {
      for (int j = 2; j <= i ~/ 2; j++) {
        if (i % j == 0) {
          prima = false;
          break;
        }
      }
    }

    if (prima) {
      print("$i $nama, $nim");
    } else {
      print("$i");
    }
  }
}
