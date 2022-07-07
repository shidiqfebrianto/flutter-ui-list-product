import 'package:flutter/material.dart';
import 'package:flutter_ui_list_product/products_module/controller/products_controller.dart';
import 'package:flutter_ui_list_product/products_module/model/products_model.dart';
import 'package:get/get.dart';

class ProductsView extends StatelessWidget {
  ProductsView({Key? key}) : super(key: key);

  final productController = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products View'),
      ),
      body: SafeArea(
        child: Obx(
          () {
            if (productController.productsList.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: productController.productsList.length,
              itemBuilder: (context, index) {
                final ProductsModel product =
                    productController.productsList[index];
                return ListTile(
                  title: Text(product.title ?? ''),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
