import 'dart:io';

main() {
  // soal 1
  var prompt = stdin.readLineSync() ?? "";
  if (prompt == "y") {
    print("anda akan menginstall aplikasi dart");
  } else {
    print("aborted");
    return;
  }

  // soal 2
  var name = stdin.readLineSync() ?? "";
  if (name.isEmpty) {
    print("Nama harus diisi!");
    return;
  }

  var role = stdin.readLineSync() ?? "";

  if (role.isNotEmpty) {
    print("Selamat datang di Dunia Werewolf, $name");
  } else {
    print("Halo $name, Pilih peranmu untuk memulai game!");
    return;
  }

  switch (role) {
    case "penyihir":
      print(
          "Halo Penyihir $name, kamu dapat melihat siapa yang menjadi werewolf!");
      break;
    case "guard":
      print(
          "Halo Guard $name, kamu akan membantu melindungi temanmu dari serangan werewolf.");
      break;
    case "werewolf":
      print("Halo Werewolf $name, Kamu akan memakan mangsa setiap malam!");
      break;
    default:
      print(
          "Halo ${role[0].toUpperCase() + role.substring(1).toLowerCase()} $name, Kamu akan menjadi rakyat biasa!");
  }

  // soal 3
  var quotes = {
    "senin":
        "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.",
    "selasa":
        "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.",
    "rabu":
        "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.",
    "kamis":
        "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.",
    "jumat": "Hidup tak selamanya tentang pacar.",
    "sabtu": "Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.",
    "minggu":
        "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani."
  };
  print(quotes[stdin.readLineSync() ?? "minggu"]);

  // soal 4
  var tanggal = "11";
  var bulan = "12";
  var tahun = "2021";

  switch (bulan) {
    case "1":
      bulan = "Januari";
      break;
    case "2":
      bulan = "Februari";
      break;
    case "3":
      bulan = "Maret";
      break;
    case "4":
      bulan = "April";
      break;
    case "5":
      bulan = "Mei";
      break;
    case "6":
      bulan = "Juni";
      break;
    case "7":
      bulan = "Juli";
      break;
    case "8":
      bulan = "Agustus";
      break;
    case "9":
      bulan = "September";
      break;
    case "10":
      bulan = "Oktober";
      break;
    case "11":
      bulan = "November";
      break;
    case "12":
      bulan = "Desember";
      break;
  }

  print("$tanggal $bulan $tahun");
}
