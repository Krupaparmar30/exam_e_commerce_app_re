import 'package:exam_e_commerce_app_re/utils/goble/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text('KP Colloatioin',style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        actions: [
          InkWell(
            onTap: () {
              cartList.add;
              Navigator.of(context).pushNamed('/cart');
            },



              child: Icon(Icons.local_grocery_store_sharp))
        ],

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,right:80),
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon( Icons.search,color: Colors.white,),
                      Text('Search',style:TextStyle(
                        color: Colors.white
                      ),),
                    ],
                  ),

                ),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,

              children: [
                ...List.generate(pro.length, (index) => GestureDetector(onTap:() {
                  slIndex=index;
                  Navigator.of(context).pushNamed('/dea');
                },child: box1(img: pro[index]['img'],price: pro[index]['price'])))

              ],

            ),
          ],
        ),
      ),
    );
  }
}
Padding box1({required String img,required int price})
{
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200,
      width: 162,
      decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                img
              )
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '${price}',style: TextStyle(
          color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold
        ),
        ),
      ),

    ),
  );
}