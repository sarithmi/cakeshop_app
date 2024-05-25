import 'package:coffee/models/cake_shop.dart';
import 'package:flutter/material.dart';
import '../components/cake_tile.dart';
import 'package:provider/provider.dart';
import '../models/cake.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Cake cake){
    Provider.of<CakeShop>(context,listen:false).removeFromCart(cake);
  }
  void payNow(){

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CakeShop>(
      builder:(context,value,child)=>SafeArea(
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Column(
          children:[Text('Your Cart',
          style: TextStyle(fontSize: 20,
          ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: value.usercart.length,
            itemBuilder: (context,index){
            Cake eachCake=value.usercart[index];
            return CakeTile(
              cake:eachCake,
              onPressed:()=>removeFromCart(eachCake),
            icon:Icon(Icons.delete),);
             
          },
          ),
          ),
         
           GestureDetector(
            onTap:payNow,
             child: Container(
                padding: const EdgeInsets.all(25),
                width:double.infinity ,
                 decoration: BoxDecoration(color: Colors.brown,
                borderRadius: BorderRadius.circular(12),
                ),
                child:const Center(
                child:Text("Pay Now",
                style:TextStyle(color: Colors.white),
                ),),
               
              ),
           )
          
          ],
          ),
      ),
      ),),
    );
  }
}