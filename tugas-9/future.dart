main() async {
  // soal 1
  var h = new Human();
  print("Luffy");
  print("Zoro");
  print("Killer");
  await h.getData();
  print(h.name);

  // soal 2
  print("Life");
  Future.delayed(Duration(seconds: 1), () {
    print("Never Flat");
  });
  print("is");

  // soal 3
}

class Human {
  String name = "";

  getData() {
    return Future.delayed(Duration(seconds: 1), () {
      print("get data [done]");
      name = "Owowo";
    });
  }
}
