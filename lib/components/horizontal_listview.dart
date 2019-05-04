import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            img_location: 'images/categories/shirts.jpg',
            image_caption: 'Shirts',
          ),
          Category(
            img_location: 'images/categories/pants.jpg',
            image_caption: 'Pants',
          ),
          Category(
            img_location: 'images/categories/jeans.jpg',
            image_caption: 'Jeans',
          ),
          Category(
            img_location: 'images/categories/jackets.jpg',
            image_caption: 'Jackets',
          ),
          Category(
            img_location: 'images/categories/shoes.jpg',
            image_caption: 'Shoes',
          ),
          Category(
            img_location: 'images/categories/fashion.jpg',
            image_caption: 'Fashion',
          ),
          Category(
            img_location: 'images/categories/shirts.jpg',
            image_caption: 'Shirts',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String img_location;
  final String image_caption;
  Category({this.image_caption, this.img_location});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              img_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
