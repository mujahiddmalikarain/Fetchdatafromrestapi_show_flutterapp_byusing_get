import 'package:apidata_fetch/common_module/appcolor.dart';
import 'package:apidata_fetch/product_module/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
 

  final ProductController productController = Get.put(ProductController());

 ProductList({Key? key, String? title}) : super(key: key);

  /// create instance of controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('product list'),
      ),
      body: Obx(() {

        if(productController.isloading.value){

          return const Center(child: CircularProgressIndicator(),);

        }
        else{
        return ListView.builder(
          itemCount: productController.productlist.length,
          itemBuilder: (context, index) {
            return Column(
              children:<Widget> [
              Row(

                children: [

                Container(

                  width: 150,
                  height: 100,
                  margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(productController.productlist[index].imageLink,
                    width: 150,
                    height: 100,
                  
                    fit: BoxFit.fill,
                    color: Colors.purple,
                    colorBlendMode: BlendMode.color,
                    
                    ),
                  ),




                ),
                Text(
           productController.productlist[index].name,
           style: TextStyle(

             color: Colors.grey,
             fontSize: 14
           ),
                ),
              Text(
           productController.productlist[index].name,
           style: TextStyle(

             color: Colors.grey,
             fontSize: 14
           ),

                )
                ],
              )


              ],
            );
          },
        );
      }
      }
      ),
      
    );
  }
}
