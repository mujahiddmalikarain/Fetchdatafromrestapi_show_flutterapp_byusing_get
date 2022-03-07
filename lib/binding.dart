import 'package:apidata_fetch/product_module/controller/product_controller.dart';
import 'package:get/get.dart';

class HomeBindings implements Bindings {
      @override
      void dependencies() {
       
        Get.lazyPut((){

     Get.lazyPut(() => ProductController());
        });
      }
    }