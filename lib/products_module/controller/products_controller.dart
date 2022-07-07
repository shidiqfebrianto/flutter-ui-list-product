import 'dart:convert';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../network_services/network_request.dart';
import '../model/products_model.dart';

class ProductsController extends GetxController {
  var productsList = <ProductsModel>[].obs;
  var offsetCount = 0.obs;
  var isMobile = false.obs;
  var isTablet = false.obs;
  var isDesktop = false.obs;
  final scrollController = ScrollController();

  final networkRequest = NetworkRequest();
  final defaultImage =
      'https://avatars.githubusercontent.com/u/14101776?s=280&v=4';
  final apiProducts = '/products';

  void fetchProductsList() async {
    networkRequest.get(apiProducts).then((value) {
      log('${value.statusCode}: ${value.statusText}',
          name: '[status] fetchProductsList');
      log(json.encode(value.body), name: '[body] fetchProductsList');

      productsList.addAll(productsModelFromJson(json.encode(value.body)));
    }).catchError((onError) {
      log(onError.toString(), error: onError, name: 'catchError');
    });
  }

  @override
  void onInit() {
    if (GetPlatform.isDesktop) {
      //isDesktop
      offsetCount.value = 16;
      isDesktop.value = true;
    } else {
      //isMobile or isTablet
      offsetCount.value = 4;
      if (Get.size.shortestSide < 600) {
        //isMobile
        isMobile.value = true;
      } else {
        //isTablet
        isTablet.value = true;
      }
    }
    networkRequest.onInit();
    fetchProductsList();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          offsetCount < productsList.length) {
        offsetCount = offsetCount + 1;
        log('total on screen => $offsetCount/${productsList.length}',
            name: 'show new data');
      }
    });
    super.onInit();
  }
}
