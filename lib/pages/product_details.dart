import 'package:flutter/material.dart';
import 'package:shopping_cart_ui/home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text("Shopping App")),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          // IconButton(
          //   icon: Icon(Icons.shopping_cart),
          //   color: Colors.white,
          //   onPressed: () {},
          // )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.blueGrey,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$ ${widget.product_detail_old_price}",
                          style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$ ${widget.product_detail_new_price}",
                          style: TextStyle(
                              color: Colors.green[800],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the size"),
                            actions: <Widget>[
                              MaterialButton(
                                child: Text("Close"),
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose the Color"),
                            actions: <Widget>[
                              MaterialButton(
                                child: Text("Close"),
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose the Quantity"),
                            actions: <Widget>[
                              MaterialButton(
                                child: Text("Close"),
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  onPressed: () {},
                  color: Colors.orange,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Order Now"),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite, color: Colors.red),
                onPressed: () {},
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text(
              "Product Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                "This is a product detail page. This is a product detail page. This is a product detail page. This is a product detail page. This is a product detail page.This is a product detail page.This is a product detail page.This is a product detail page.This is a product detail page."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product name",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "Shirts",
                    style: TextStyle(),
                  ))
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product brand",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Brand A"),
              )
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product condition",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("New "),
              )
            ],
          ),
          Divider(),
          //Similar Product showing
          Text(
            "Similar Products",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 260.0,
            child: SimilarProduct(),
          )
        ],
      ),
    );
  }
}

class SimilarProduct extends StatefulWidget {
  @override
  _SimilarProductState createState() => _SimilarProductState();
}

class _SimilarProductState extends State<SimilarProduct> {
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
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Similar_product(
          product_name: product_list[index]['name'],
          product_picture: product_list[index]['picture'],
          product_old_price: product_list[index]['old_price'],
          product_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Similar_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Similar_product(
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

