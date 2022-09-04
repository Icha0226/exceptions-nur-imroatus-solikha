void main () async{
  print("PROGRAM STUDI FAKULTAS ILMU KOMPUTER");
  print("=======================================");
  sistemInformasi();
  teknikInformatika();
  sainsData();
  
  try{
    var hasil = await kelas(5);
    print("=======================================");
    print("              Status Kelas             \n");
    print(hasil);

  }catch(error){
    print("=======================================");
    print("              Status Kelas             \n");
    print(error);
  }

  try{
    var dataMhs = await createOrderMessage();
    print(dataMhs);
    print("=======================================");
  }catch(error){
    print(error);
    print("=======================================");
  }

  }


void sistemInformasi(){
  Future((){
    print("Sistem Informasi");
  });
}

void teknikInformatika(){
  Future((){
    print("Teknik Informatika");
  });
}

void sainsData(){
  Future((){
    print("Sains Data");
  });
}

Future <String> kelas(int jumlahKelas){
  var kelas = 8;
  return Future.delayed(Duration(seconds: 1), (){
    if (kelas>jumlahKelas){
      return "Jumlah kelas yang kosong: $jumlahKelas";
    }else{
      throw "Maaf kapasitas kelas sudah penuh";
    }
  });
}

Future <String> createOrderMessage() async{
  var mhs = await fetchUserOrder();
  return "Jumlah mahasiswa pada setiap kelas : $mhs";
}

Future <String> fetchUserOrder(){
  return Future.delayed(Duration(seconds: 3), (){
    return "40";
  });
}
