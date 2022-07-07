import 'package:flutter_ui_list_product/home_view.dart';
import 'package:flutter_ui_list_product/products_module/view/products_view.dart';
import 'package:get/route_manager.dart';

final routes = [
  GetPage(name: '/', page: () => const HomeView()),
  GetPage(name: '/products', page: () => ProductsView()),
];
