import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:qwibix/common/widgets/loaders/loaders.dart';
import 'package:qwibix/data/repositories/product/product_repository.dart';
import 'package:qwibix/features/shop/models/product_model.dart';

class AllProductsController  extends GetxController{
static AllProductsController get instance => Get.find(); 


final repository = ProductRepository.instance; 

Future<List<ProductModel>> fetchProductsByQuery(Query? query) async {
try{
if(query == null) return []; 

final products = await repository.fetchProductsByQuery(query);
return products;

} catch (e) {
  BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
  return []; 
}

}

}