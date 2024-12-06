import 'package:flutter/material.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  List<Map> names =[
    {
      "name": "aarji",
      "msc" : "4 new message"
    },
    {
      "name": "arunarjashdahah",
       "msc" : "2 new message"
    },{
      "name": "aaadafafrji",
       "msc" : "6 new message"
    },
  ]  ;
    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(itemBuilder: (context, index) => ListTile(
leading: CircleAvatar(
  backgroundColor: Colors.red,
  
),
title: Text(names[index]["name"]),
subtitle: Text(names[index]["msc"]),
trailing: CircleAvatar(
  radius: 4,
  backgroundColor: Colors.green,
),
        ), separatorBuilder: (context, index) => Divider(), itemCount: names.length),
      ),
    );
  }
}