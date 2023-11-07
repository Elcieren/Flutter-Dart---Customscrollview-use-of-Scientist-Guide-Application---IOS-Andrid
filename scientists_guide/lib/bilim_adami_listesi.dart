import 'package:flutter/material.dart';
import 'package:scientists_guide/bilim_item.dart';
import 'package:scientists_guide/data/strings.dart';
import 'package:scientists_guide/model/adam.dart';

class BilimAdamiListesi extends StatelessWidget {
  late List<Adam> tumAdamlar;
   BilimAdamiListesi(){
      tumAdamlar=veriKaynaginiHazirla();
      print(tumAdamlar);
   }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bilim Adamlari'),
        ),
        body: Center(
      child: ListView.builder(itemBuilder:(context,index){
          return bilimItem(listelenenAdam: tumAdamlar[index]);
      },itemCount: tumAdamlar.length, ),
    ),
    );
  }
  
  List<Adam> veriKaynaginiHazirla() {
    List<Adam> gecici=[];
    for (var i = 0; i < 12; i++) {
       var bilim_adai_adi=Strings.BILIM_ADAMLARI[i];
       var bilim_adami_tarihi=Strings.BILIM_ADAMI_TARIHI[i];
       var  bilim_adami_detay=Strings.BILIM_ADAMI_GENEL_OZELLIKLERI[i];

       var bilim_adami_kucukResim=Strings.BILIM_ADAMLARI[i]+'${i+1}.jpg';
       var bilim_adami_buyukResim=Strings.BILIM_ADAMLARI[i]+'_buyuk'+'${i+1}.jpg';

       Adam eklenecekAdam=Adam(bilim_adai_adi,bilim_adami_tarihi,bilim_adami_detay,bilim_adami_kucukResim,bilim_adami_buyukResim);
        gecici.add(eklenecekAdam);
    }

    return gecici;

  }
}