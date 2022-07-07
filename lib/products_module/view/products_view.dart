import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_list_product/products_module/controller/products_controller.dart';
import 'package:flutter_ui_list_product/products_module/model/products_model.dart';
import 'package:flutter_ui_list_product/utils/custom_color.dart';
import 'package:get/get.dart';

class ProductsView extends GetResponsiveView {
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
                return Container(
                  height: 140.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    color: CustomColor.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: CustomColor.black.withOpacity(0.2),
                        blurRadius: 10.0,
                        spreadRadius: 0.4,
                        offset: const Offset(0, 4),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: CustomColor.gray,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$ ${product.price} ',
                                style: TextStyle(
                                  color: CustomColor.black,
                                  fontFamily: 'Inter',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(14, 10, 15, 10),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.title ?? '',
                                    style: TextStyle(
                                      color: CustomColor.black,
                                      fontFamily: 'Inter',
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 10.h),
                                  Flexible(
                                    child: Text(
                                      product.description ?? '',
                                      style: TextStyle(
                                        color: CustomColor.black,
                                        fontFamily: 'Inter',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  '★ ${product.rating?.rate}',
                                  style: TextStyle(
                                    color: CustomColor.black,
                                    fontFamily: 'Inter',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ]),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
