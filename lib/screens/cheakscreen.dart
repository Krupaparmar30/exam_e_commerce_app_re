import 'package:exam_e_commerce_app_re/utils/goble/product.dart';
import 'package:flutter/material.dart';

class lastPage extends StatefulWidget {
  const lastPage({super.key});

  @override
  State<lastPage> createState() => _lastPageState();
}

class _lastPageState extends State<lastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        centerTitle: true,
        title: Text('Cheak Out'),
        actions: [

        ],

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text('TOTAL PRODUCT :$qty',style: TextStyle(
                  fontSize: 22
                ),),
              ),
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text('TOTAL AMOUNT :$amount',style: TextStyle(
                fontSize: 22
              ),)),
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text('TOTAL GST :18%',style: TextStyle(
                fontSize: 22
              ),)),
            ),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text('TOTAL ALL :$total',style: TextStyle(
                fontSize: 22
              ),),),
            ),
          )
        ],
      ),
    );
  }
}
