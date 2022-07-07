import 'dart:convert';
import 'dart:developer';

import 'package:flutter_ui_list_product/network_services/network_request.dart';
import 'package:flutter_ui_list_product/products_module/model/products_model.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  var productsList = <ProductsModel>[].obs;
  final networkRequest = NetworkRequest();
  final defaultImage =
      'https://avatars.githubusercontent.com/u/14101776?s=280&v=4';
  final apiProducts = 'https://fakestoreapi.com/products';

  void fetchProductsList() async {
    networkRequest
        .get(apiProducts, contentType: 'application/json')
        .then((value) {
      log(json.encode(value.body));
      productsList.addAll(productsModelFromJson(json.encode(value.body)));
      // List list = json.encode(value.body);
      // productsList.addAll(list.map((e) => ProductsModel.fromJson(e)).toList());
    }).catchError((onError) {
      log(onError.toString(), error: 'catchError');
    });
  }

  @override
  void onInit() {
    fetchProductsList();
    super.onInit();
  }
}
