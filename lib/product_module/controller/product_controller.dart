
import 'dart:ffi';

import 'package:apidata_fetch/api_module/api_service.dart';
import 'package:get/get.dart';
import 'package:apidata_fetch/product_module/model/product_model';

class ProductController extends GetxController {


  var isloading = true.obs; // obs obserable varaiable

  var productlist = <ProductModel>[].obs;

@override
  void onInit() {
    // TODO: implement onInit

    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isloading(true);

      var products = await Apiservice.fetchproducts();

      if (products.isNotEmpty) {
        productlist.assignAll(products);
      }
    } finally {
      isloading(false);
    }
  }

 
}

