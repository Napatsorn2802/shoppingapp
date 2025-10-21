import 'package:flutter/material.dart';
import 'package:shoppingapp/widget/support_widget.dart';
// ลบ import 'package:google_fonts/google_fonts.dart'; ออก เพราะเราจะใช้ Custom Font

class Home extends StatefulWidget{
  const Home ({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build (BuildContext context){ // เปลี่ยน constext เป็น context
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 192, 173, 139),
      body: Container(
        margin: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // ส่วน Header และรูปภาพ
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  "Hey, Shivam",
                  style: AppWidget.boldTextFeildStyle(),
                    ),
                    Text("Good Morning",
                    style: AppWidget.lightTextFeildStyle(),
                    ),
                ],
              ),
                ClipRRect( 
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("images/user1.jpg",
                  height: 75,
                  width: 75, 
                  fit: BoxFit.cover,)
                  ),
            ],
          ),
          
          // ช่องค้นหาสินค้า
          const SizedBox(height: 30,),
            Container(
              decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)) ,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                border:InputBorder.none,
                hintText: "Search products",
                hintStyle:AppWidget.lightTextFeildStyle(),
                prefixIcon: const Icon(Icons.search,
                color:Colors.black)),
              ),
            ),
            
            const SizedBox(height: 20,),//เว้นระยะห่าง
            
            // หมวดหมู่ (Categories) พร้อมการเรียกใช้ Custom Font ที่ถูกต้อง
            Row(
              children: [
                Text(
                  "หมวดหมู่",//Categories
                  style: const TextStyle( // ใช้ const TextStyle() เพื่อประสิทธิภาพ
                    fontFamily: 'NotoSerifThai_Thin', // <<--- ใช้ชื่อ Family Font ที่คุณกำหนดใน pubspec.yaml
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
        ],
        ),
      )
    );
  }
}
