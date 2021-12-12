main() {
  // soal 1
  var count = 2;
  while (count < 21) {
    print("$count - I love coding");
    count = count + 2;
  }

  count = count - 2;
  while (count > 0) {
    print("$count - I will become mobile developer");
    count = count - 2;
  }

  // soal 2
  count++;
  for (count; count < 21; count++) {
    if (count % 2 == 0) {
      print("$count - Berkualitas");
    } else if (count % 2 != 0) {
      if (count % 3 == 0) {
        print("$count - I love Coding");
      } else {
        print("$count - Santai");
      }
    }
  }

  // soal 3
  var dim = [4, 8];
  for (var i = 0; i < dim[0]; i++) {
    var tags = "";
    for (var j = 0; j < dim[1]; j++) {
      tags += "#";
    }
    print(tags);
  }

  // soal 4
  var len = 7;
  for (var i = 1; i <= len; i++) {
    var tags = "";
    for (var j = 1; j <= i; j++) {
      tags += "#";
    }
    print(tags);
  }
}
