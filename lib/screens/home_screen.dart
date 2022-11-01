// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Shopping list'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/shopList');
              },
              icon:
                  // context.read<ShopList>().cartCount == 0
                  //     ?
                  Icon(
                CupertinoIcons.cart,
                size: 30,
              )
              // : Stack(
              //     children: [
              //       Icon(
              //         CupertinoIcons.cart,
              //         size: 30,
              //       ),
              //       Positioned(
              //         child: CircleAvatar(
              //           radius: 8,
              //           backgroundColor: Colors.red,
              //           child:
              //               Text('${context.watch<ShopList>().cartCount}',
              //                   style: TextStyle(
              //                     fontSize: 10,
              //                     fontWeight: FontWeight.w600,
              //                   )),
              //         ),
              //         left: 15,
              //         top: 0,
              //         bottom: 12,
              //       ),
              //     ],
              //   )
              )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (_, index) => Divider(
          thickness: 2,
        ),
        separatorBuilder: (_, index) => ListTile(
            leading: Container(
                width: 40,
                height: 40,
                color: Colors.red //change to value from items list
                // context.read<ShopList>().items[index].color,
                ),
            //item name
            title: Text(
              '',
              // context.read<ShopList>().items[index].name,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            trailing: Container(
              width: 110,
              // color: Colors.blue,
              child: Row(
                children: [
                  IconButton(
                      color: Colors.blue.shade900,
                      onPressed: () {
                        // context
                        //     .read<ShopList>()
                        //     .addToCart(context.read<ShopList>().items[index]);
                        // print(context.read<ShopList>().cartItems);
                      },
                      icon: Icon(Icons.add_circle)),
                  //item count
                  Text(
                    '',
                    // '${context.watch<ShopList>().items[index].count}',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                      color: Colors.blue.shade900,
                      onPressed:
                          //conditionally enable/disable button
                          // context.watch<ShopList>().items[index].count == 0
                          //         ? null
                          //         :
                          () {
                        // context.read<ShopList>().removeFromCart(
                        //     context.read<ShopList>().items[index]);
                        // print(context.read<ShopList>().cartItems);
                      },
                      icon: Icon(Icons.remove_circle)),
                ],
              ),
            )),
        itemCount: 1, //provide item count
        // context.read<ShopList>().itemCount
      ),
    );
  }
}
