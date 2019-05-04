import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var Product_on_the_cart = [
    {
      "name": "Shoe",
      "picture": "images/categories/shoes.jpg",
      "price": 1230,
      "size": "M",
      "color": "Blue",
      "quantity": 1
    },
    {
      "name": "Scarf",
      "picture": "images/categories/scarf.jpg",
      "price": 860,
      "size": "M",
      "color": "Green",
      "quantity": 1
    },
    {
      "name": "Boot",
      "picture": "images/categories/boot.jpg",
      "price": 6700,
      "size": "8",
      "color": "Grey",
      "quantity": 1
    },
    {
      "name": "Watche",
      "picture": "images/categories/watches.jpg",
      "old_price": 13000,
      "price": 12480,
      "size": "L",
      "color": "White",
      "quantity": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Product_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_product_name: Product_on_the_cart[index]["name"],
          cart_product_color: Product_on_the_cart[index]["color"],
          cart_product_size: Product_on_the_cart[index]["size"],
          cart_product_price: Product_on_the_cart[index]["price"],
          cart_product_qty: Product_on_the_cart[index]["quantity"],
          cart_product_picture: Product_on_the_cart[index]["picture"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_qty;

  Single_cart_product(
      {this.cart_product_name,
      this.cart_product_picture,
      this.cart_product_price,
      this.cart_product_size,
      this.cart_product_color,
      this.cart_product_qty});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      child: ListTile(
        leading: Image.asset(
          cart_product_picture,
          width: 84.0,
        ),
        title: Text(
          cart_product_name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(cart_product_size,
                      style: TextStyle(color: Colors.red)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15.0, 8.0, 8.0, 8.0),
                  child: Text("color:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(cart_product_color,
                      style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$ ${cart_product_price}",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            // IconButton(
            //   icon: Icon(Icons.arrow_drop_up),
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: Icon(Icons.arrow_drop_down),
            //   onPressed: () {},
            // )
          ],
        ),
      ),
    );
  }
}
