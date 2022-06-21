import 'package:flutter/material.dart';

import '../widgets/category/category-list.widget.dart';
import '../widgets/product/product-list.widget.dart';
import '../widgets/search-box.widget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            SearchBox(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Categories",
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              child: CategoryList(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Best Selling",
                  style: Theme.of(context).textTheme.headline5,
                ),
                ElevatedButton(
                  child: Text("See All"),
                  onPressed: () => {},
                ),
              ],
            ),

            Container(
              height: 280,
              child: ProductList(
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
