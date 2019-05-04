import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopping_cart_ui/components/products.dart';
import 'package:shopping_cart_ui/pages/cart.dart';
import 'components/horizontal_listview.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/c2.jpg"),
          AssetImage("images/c3.jpg"),
          AssetImage("images/c4.jpg"),
          AssetImage("images/c5.jpg"),
          AssetImage("images/c6.jpg"),
          AssetImage("images/c7.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(
          milliseconds: 1000,
        ),
        dotBgColor: Colors.transparent,
        dotSize: 5.0,
        indicatorBgPadding: 8.0,
        //  dotColor: Colors.green,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("Shopping App"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Search()));
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Ishwor",
                style: TextStyle(fontSize: 24.0),
              ),
              accountEmail: Text("ishworpanta10@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.person),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),

            // InkWell(
            //   onTap: () {},
            //   child: ListTile(
            //     title: Text("Home"),
            //     leading: Icon(Icons.home),
            //   ),
            // ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue[800],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.indigo,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.lightBlue,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Setting"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.greenAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, 'login');
              },
              child: ListTile(
                title: Text("Logout"),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.redAccent,
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          image_carousel,
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ),
          //horizontal list view
          HorizontalList(),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Recents Products",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ),
          //grid view
          Flexible(child: Products())
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            title: Material(
              elevation: 8.0,
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.search),
                    ),
                    border: InputBorder.none,
                    hintText: "Search Clothes"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
