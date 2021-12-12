main() {
  // soal 1
  range(startNum, finishNum) {
    var list = [];
    if (startNum == finishNum) {
      list.add(startNum);
    } else if (startNum < finishNum) {
      for (var i = startNum; i <= finishNum; i++) {
        list.add(i);
      }
    } else {
      for (var i = startNum; i >= finishNum; i--) {
        list.add(i);
      }
    }
    return list;
  }

  print(range(1, 10));

  // soal 2
  rangeWithStep(startNum, finishNum, step) {
    var list = [];
    if (startNum == finishNum) {
      list.add(startNum);
    } else if (startNum < finishNum) {
      for (var i = startNum; i <= finishNum; i = i + step) {
        list.add(i);
      }
    } else {
      for (var i = startNum; i >= finishNum; i = i - step) {
        list.add(i);
      }
    }
    return list;
  }

  print(rangeWithStep(1, 10, 2));

  // soal 3
  dataHandling(data) {
    data.forEach((item) {
      print("AAA");
      print("Nomor ID:   ${item[0]}");
      print("Nama Lengkap:   ${item[1]}");
      print("TTL:   ${item[2]} ${item[3]}");
      print("Hobi:   ${item[4]}");
      print("");
    });
  }

  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
  ];

  print(dataHandling(input));

  // soal 4
  balikKata(s) {
    return s.split("").reversed.join();
  }

  print(balikKata("Kasur"));
}
