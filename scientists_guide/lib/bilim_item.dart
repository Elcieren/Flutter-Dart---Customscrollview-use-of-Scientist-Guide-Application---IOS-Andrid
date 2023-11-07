import 'package:flutter/material.dart';
import 'package:scientists_guide/bilim_adami_detay.dart';
import 'package:scientists_guide/model/adam.dart';

class bilimItem extends StatelessWidget {
  final Adam listelenenAdam;
  const bilimItem({required this.listelenenAdam,super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle=Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => BilimDetay(secilenAdam: listelenenAdam),));
            },
            leading: Image.asset("images/"+listelenenAdam.adamKucukResim,width: 64,height: 64,),
            title: Text(listelenenAdam.adamAdi,style: myTextStyle.headline5,),
            subtitle: Text(listelenenAdam.adamTarihi,style: myTextStyle.subtitle1,),
            trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
          ),
        ),
      ),
    );
  }
}