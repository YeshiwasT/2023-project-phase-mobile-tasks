import 'package:flutter/material.dart';

 Widget SingleTodo(String image,String title,String date,Color color) {
 return Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        blurRadius: 2.0,
        ),
      
    ],
  ),
   margin: EdgeInsets.only(top:5,bottom: 5,left: 15,right:15),
   height: 70,
   child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      CircleAvatar(
        child: Text(image),
      ),
      Text(title),
      Text(date),
      Container(
        width: 5,
        height: 45,
        color:color
      )
    ],
   ),
 );
}