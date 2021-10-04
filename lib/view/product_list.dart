import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_product_app/controller/back.dart';
import 'package:simple_product_app/view/product_page.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  Api dataController = Get.put(Api());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bestbuy"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag,
              ))
        ],
      ),
      backgroundColor: Colors.blueGrey[400],
      body: ListView.builder(
        itemCount: dataController.data.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 5,
          ),
          child: Card(
            color: Colors.grey[200],
            child: ListTile(
              onTap: () {
                Get.to(
                  () => ProductPage(),
                  arguments: index,
                );
              },
              minVerticalPadding: 20,
              leading: SizedBox(
                height: 70,
                width: 70,
                child: Image.network(dataController.data[index]["url"]),
              ),
              title: Obx(
                () => Text(
                  dataController.data[index]["name"],
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              subtitle: Obx(
                () => Text(
                  dataController.data[index]["short_description"]
                      .toString()
                      .substring(0, 99),
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
