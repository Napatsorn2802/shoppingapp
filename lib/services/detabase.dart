import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:shoppingapp/Admin/add_product.dart';

class DatabaseMethods{

  Future addUserDeteils(Map<String, dynamic> userInfoMap, String id)async{
    return await FirebaseFirestore.instance
    .collection("users")
    .doc(id)
    .set(userInfoMap);
  }

  Future addProduct(Map<String, dynamic> userInfoMap, String categoryname)async{
    return await FirebaseFirestore.instance
    .collection(categoryname)
    .add(userInfoMap);//พอแอดสินค้าหมวดไหนมันจะไปอยู่หมวดนั้น
  }

Future<Stream<QuerySnapshot>> getProducts(String category)async{
  return await FirebaseFirestore.instance.collection(category).snapshots();
}
}