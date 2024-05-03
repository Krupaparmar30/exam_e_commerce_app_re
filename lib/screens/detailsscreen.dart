import 'dart:math';

import 'package:exam_e_commerce_app_re/utils/goble/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailsPage extends StatefulWidget {
  const detailsPage({super.key});

  @override
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        centerTitle: true,
        title: Text('All Details'),

      ),
      body:Column(
        children: [
          ...List.generate(1, (index) =>box2(img: pro[slIndex]['img'])),
         ...List.generate(1, (index) =>box3(price: pro[slIndex]['price'],dec: pro[slIndex]['dec'].toString())),
          GestureDetector(
            onTap: () {
                   cartList.add(pro[slIndex]);
                   setState(() {

                     c++;
                   });
                   print(c);

            },
            child: Container(
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.black,borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text('Add To Cart',style: TextStyle(
                  color: Colors.white,fontSize: 22
                ),),
              ),
            ),
          )
        ],
      )
    );
  }

  Container box3({required int price,required String dec}) {
    return Container(
          height: 350,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:Colors.grey.shade300,

          ),
      child: Column(
        children: [
          Text('$price /-',style: TextStyle(
            color: Colors.black,fontSize: 32,
          ),),
          Text(dec,style: TextStyle(
            fontSize: 18
          ),)
        ],
      ),
        );
  }

  Center box2({required String img}) {
    return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.pink,borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                   img,
                  )
                )
              ),
            ),
          ),
        );
  }
}
int c=0;