import 'package:flutter/material.dart';
import 'package:coffee/models/cake_shop.dart';
import 'package:provider/provider.dart';
import 'package:coffee/components/cake_tile.dart';
import '../models/cake.dart';

class ShopPage extends StatefulWidget {
 const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Cake cake){
   Provider.of<CakeShop>(context,listen:false).addItemToCart(cake);
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Successfully added to cart"),
    ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CakeShop>(
      builder:(context,value,child)=>SafeArea(
      child:Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
      children: [
        const Text("How would you like your cake?",
        style:TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 25),
        Expanded(
          child:ListView.builder(
            itemCount: value.cakeShop.length,
            itemBuilder:(context,index){
            Cake  eachCake=value.cakeShop[index];
            return CakeTile(
              cake:eachCake,
              icon:Icon(Icons.add),
              onPressed:()=> addToCart(eachCake),
              );
            },

          ),
          ),
        
      ],
    ),
    ),
    ),
    );
  }
}