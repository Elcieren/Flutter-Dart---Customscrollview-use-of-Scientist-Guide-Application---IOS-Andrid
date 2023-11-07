import 'package:flutter/material.dart';
import 'package:scientists_guide/model/adam.dart';

class BilimDetay extends StatelessWidget {
  final Adam secilenAdam;
  const BilimDetay({required this.secilenAdam ,super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            title: Text(secilenAdam.adamAdi+" Bilim Adamanın Hayatı"),
            centerTitle: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(background: Image.asset('images/'+secilenAdam.adamBuyukResim,fit: BoxFit.cover,)),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child:Text(
                  secilenAdam.adamDetayi,
                  style: Theme.of(context).textTheme.subtitle1
                ) ),
            ),
          )
        ],
         ),
    );
  }
}