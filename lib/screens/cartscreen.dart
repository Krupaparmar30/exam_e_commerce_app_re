import 'package:exam_e_commerce_app_re/utils/goble/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('cart page'),

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: List.generate(cartList.length, (index) => Row(
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Colors.grey.shade300
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: AssetImage(
                                    cartList[index]['img'],
                                  ),
                              )

                          ),

                        ),
                        Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),

                              color:Colors.grey.shade100
                          ),
                          child: Column(

                            children: [
                              Text(cartList[index]['price'].toString(),style: TextStyle(
                                color: Colors.black,fontSize:22,fontWeight: FontWeight.bold
                              ),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(cartList[index]['line'].toString(),style: TextStyle(
                                    color: Colors.black,fontSize:16
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(cartList[index]['star'].toString(),style: TextStyle(
                                    color: Colors.black,fontSize:16
                                ),),

                              
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(onTap:() {
                                  setState(() {
                                    cartList.removeAt(index);
                                  });
                                },child: Icon(Icons.delete, color: Colors.black,size: 32,)),
                              )
                            ],
                          ),

                        )
                      ],
                    ),
                  ),
                )
                ],
              ))
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/last');
                for(int i=0;i<cartList.length;i++)
                  {
                    qty=(qty+cartList[i]['mem']).toInt();
                    amount=(amount+cartList[i]['price']*(cartList[i]['mem']));
                    total=((amount*18)/100)+amount;
                  }
              },
              child: Container(
                height: 80,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black,borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text('Cheak Out',style: TextStyle(
                    color: Colors.white,fontSize: 22
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
