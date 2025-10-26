/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/services/detabase.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class CategoryProducts extends StatefulWidget{
 String category;
 CategoryProducts({required this.category});

@override
State<CategoryProducts> createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
Stream? CategoryStream;

getontheload()async{
  CategoryStream= await DatabaseMethods().getProducts(widget.category);
setState(() {
  
});
}

@override
void initState(){
  getontheload();
  super.initState();
}

Widget allProducts(){
  return StreamBuilder(stream: CategoryStream, builder: (context, AsyncSnapshot snapshoot){
    return snapshoot.hasData? GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,childAspectRatio: 0.6,mainAxisSpacing: 10,crossAxisSpacing:10 ), 
        itemCount: snapshoot.data.docs.length,  itemBuilder: (context,index){
          DocumentSnapshot ds= snapshoot.data.docs[index];

          return Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // รูปสินค้า
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                ds["Image"],
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            
            // ชื่อสินค้า
            Text(
              ds["Name"],
              style: AppWidget.semiboldTextFeildStyle(),
            ),
            SizedBox(height: 15),
            
            // ราคาและปุ่ม
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // ignore: unnecessary_string_escapes
                  "\฿"+ds["Price"],//ราคา
                  style: TextStyle(
                    color:(const Color.fromARGB(255, 112, 80, 49)),//สี
                    fontSize: 22,//ขนาด
                    fontWeight: FontWeight.bold,//ความหนา
                  ),
                ),
                SizedBox(width: 40),//ระยะห่าง
                    Container(
                      padding: EdgeInsets.all(6),//ขนาดปุ่ม
                      decoration: BoxDecoration(//ตกแต่งปุ่ม
                        color:(const Color.fromARGB(255, 112, 80, 49)),//สี
                        borderRadius: BorderRadius.circular(8),//ความโค้งมน
                      ),
                      child: Icon(//ไอคอนปุ่ม
                        Icons.shopping_cart_outlined,
                        color: Colors.white,//สี
                        size: 20,//ขนาด
                      ),
                    ),
              ]
            )
          ]
        )
          );
        }):Container();
  });
}

  @override
  Widget build(BuildContext constext){
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 192, 173, 139),
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(255, 192, 173, 139),),
      body:Container(
        child: Column(
          children: [
              Expanded(child: allProducts()),
      ]))
    );
  }
}*/
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/services/detabase.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class CategoryProducts extends StatefulWidget{
 String category;
 CategoryProducts({required this.category});

@override
State<CategoryProducts> createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
Stream? CategoryStream;

getontheload()async{
  CategoryStream= await DatabaseMethods().getProducts(widget.category);
setState(() {
  
});
}

@override
void initState(){
  getontheload();
  super.initState();
}

Widget allProducts(){
  return StreamBuilder(stream: CategoryStream, builder: (context, AsyncSnapshot snapshoot){
    return snapshoot.hasData? GridView.builder(
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,childAspectRatio: 0.6,mainAxisSpacing: 20,crossAxisSpacing:20 ), 
        itemCount: snapshoot.data.docs.length,  itemBuilder: (context,index){
          DocumentSnapshot ds= snapshoot.data.docs[index];

          return Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // รูปสินค้า
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                ds["Image"],
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            
            // ชื่อสินค้า
            Text(
              ds["Name"],
              style: AppWidget.semiboldTextFeildStyle(),
            ),
            SizedBox(height: 15),
            
            // ราคาและปุ่ม
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // ignore: unnecessary_string_escapes
                  "\฿"+ds["Price"],//ราคา
                  style: TextStyle(
                    color:(const Color.fromARGB(255, 112, 80, 49)),//สี
                    fontSize: 22,//ขนาด
                    fontWeight: FontWeight.bold,//ความหนา
                  ),
                ),
                SizedBox(width: 40),//ระยะห่าง
                    Container(
                      padding: EdgeInsets.all(6),//ขนาดปุ่ม
                      decoration: BoxDecoration(//ตกแต่งปุ่ม
                        color:(const Color.fromARGB(255, 112, 80, 49)),//สี
                        borderRadius: BorderRadius.circular(8),//ความโค้งมน
                      ),
                      child: Icon(//ไอคอนปุ่ม
                        Icons.shopping_cart_outlined,
                        color: Colors.white,//สี
                        size: 20,//ขนาด
                      ),
                    ),
              ]
            )
          ]
        )
          );
        }):Container();
  });
}

  @override
  Widget build(BuildContext constext){
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 192, 173, 139),
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(255, 192, 173, 139),),
      body:Container(
        child: Column(
          children: [
              Expanded(child: allProducts()),
      ]))
    );
  }
}