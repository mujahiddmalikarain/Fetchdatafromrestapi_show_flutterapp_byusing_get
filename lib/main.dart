import 'package:apidata_fetch/binding.dart';

import 'package:flutter/material.dart';
import 'package:apidata_fetch/product_module/view/product_list_view.dart';
import 'package:get/get.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
initialRoute: '/',

getPages: [

        GetPage(
          name: "/",
          page: () =>  ProductList(),
          binding: HomeBindings(),
          transition: Transition.leftToRightWithFade,
          opaque: false,
          showCupertinoParallax: true,
        )
],
      title: 'kgk',
      theme: ThemeData(
       
        primarySwatch:Colors.purple,
    
      ),
      home: ProductList(title: 'Flutter Demo Home Page'),
    );
  }
}




