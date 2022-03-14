import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'model/datepicker.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String name;
  final int price;

  const DetailPage({
    Key? key,
    required this.title,
    required this.name,
    required this.price
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        backgroundColor: Colors.black,),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.network(title),
              SizedBox(height: 16,),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text("${price}"),
            ],
          ),
        ),
      ),
    );
  }
}
