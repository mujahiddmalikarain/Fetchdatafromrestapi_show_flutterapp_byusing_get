import 'package:apidata_fetch/product_module/model/product_model';

import 'package:http/http.dart' as http;

class Apiservice{


  static var client=http.Client();

  static Future<List<ProductModel>> fetchproducts()async{
  

var url = Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie');
    var response= await client.get(url);

    if(response.statusCode==200){


      var jsonstring=response.body;

      return ProductModelFromJson(jsonstring);
    }else{

      return  ProductModelFromJson(response.body);
    }

  
  }
  
}






