import 'package:flutter/material.dart';
import '../models/cake.dart';

class CakeTile extends StatelessWidget {
  final Cake cake;
  final void Function()? onPressed;
  final Widget icon;
   CakeTile({super.key,
   required this .cake,
   required this.onPressed,
   required this.icon,
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.grey[200],borderRadius:BorderRadius.circular(12)) ,
        margin:const EdgeInsets.only(bottom:10),
        padding:EdgeInsets.symmetric(vertical: 25,horizontal: 10) ,
      child: ListTile(
        title: Text(cake.name),
        subtitle: Text(cake.price),
        leading:Image.asset(cake.imagePath) ,
        trailing: IconButton(
          icon: icon,
          onPressed:onPressed,
        ),
      ),
    );
  }
}