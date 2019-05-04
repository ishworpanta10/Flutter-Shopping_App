import 'package:flutter/material.dart';
import 'package:shopping_cart_ui/pages/product_details.dart';

class SimilarProduct extends StatefulWidget {
  @override
  _SimilarProductState createState() => _SimilarProductState();
}

class _SimilarProductState extends State<SimilarProduct> {
  @override
  Widget build(BuildContext context) {
    var product_list = [
    
      {
        "name": "Shirt",
        "picture": "images/categories/shirts.jpg",
        "old_price": 2000,
        "price": 1350,
      },
      {
        "name": "Shoe",
        "picture": "images/categories/shoes.jpg",
        "old_price": 1500,
        "price": 1230,
      },
      
      {
        "name": "Fashion Coat",
        "picture": "images/categories/fashion.jpg",
        "old_price": 5500,
        "price": 3500,
      },
      {
        "name": "Bag",
        "picture": "images/categories/bags.jpg",
        "old_price": 1700,
        "price": 1400,
      },
    
      {
        "name": "Boot",
        "picture": "images/categories/boot.jpg",
        "old_price": 8000,
        "price": 6700,
      },
      {
        "name": "Watche",
        "picture": "images/categories/watches.jpg",
        "old_price": 13000,
        "price": 12480,
      },
      {
        "name": "Scarf",
        "picture": "images/categories/scarf.jpg",
        "old_price": 1200,
        "price": 860,
      },
    ];
    @override
    Widget build (BuildContext context) {
      return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        },
      );
    }
  }
}

class Similar_single_prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Similar_single_prod(
      {this.product_name,
      this.product_picture,
      this.product_old_price,
      this.product_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        //we are passing the vaklue of product to product detail page by this
                        product_detail_name: product_name,
                        product_detail_new_price: product_price,
                        product_detail_old_price: product_old_price,
                        product_detail_picture: product_picture,
                      ),
                )),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                // child: ListTile(
                //   leading: Text(product_name,
                //       style: TextStyle(fontWeight: FontWeight.bold)),
                //   title: Text(
                //     "\$ $product_price",
                //     style: TextStyle(
                //       color: Colors.red,
                //       fontWeight: FontWeight.w800,
                //     ),
                //   ),
                //   subtitle: Text(
                //     "\$ $product_old_price",
                //     style: TextStyle(
                //         color: Colors.black54,
                //         fontWeight: FontWeight.w800,
                //         decoration: TextDecoration.lineThrough),
                //   ),
                // ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        product_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "\$ ${product_price}",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              ),
              child: Image.asset(product_picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
