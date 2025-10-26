import 'package:flutter/material.dart';
import 'package:shoppingapp/pages/category_products.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class Home extends StatefulWidget{
  const Home ({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{
List categories=[//ภาพหมวดหมู่
  "images/icons8-tree-50.png",
  "images/icons8-flower-50.png",
  "images/icons8-cactus-50.png",
  "images/icons8-fruit-50.png"
];

List Categoryname=[
 "tree",
 "flower",
 "cantus",
 "fruit"
];

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
              decoration:BoxDecoration(color:Colors.white,
              borderRadius: BorderRadius.circular(20)) ,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                border:InputBorder.none,
                hintText: "Search products",
                hintStyle:AppWidget.lightTextFeildStyle(),
                prefixIcon: const Icon(Icons.search,
                color:Color.fromARGB(255, 112, 80, 49))),//ไอค่อนค้นห่
              ),
            ),
            
            const SizedBox(height: 20,),//เว้นระยะห่าง
            
            // หมวดหมู่ (Categories) พร้อมการเรียกใช้ Custom Font ที่ถูกต้อง
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",//หมวดหมู่
                  style: AppWidget.semiboldTextFeildStyle()
                ),
                Text(
                  "See all",//ดูทั้งหมด
                  style: TextStyle(
                    color: (const Color.fromARGB(255, 112, 80, 49)),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,)
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 130,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color:Color.fromARGB(255, 115, 80, 47),
                    borderRadius: BorderRadius.circular(10)
                  ),           //All
                  child: Center(
                    child: Text(
                    "All", 
                    style: TextStyle(
                    color:Colors.white,
                    fontSize:20,
                    fontWeight:FontWeight.bold,)),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 140,
                    child:ListView.builder(
                      padding:EdgeInsets.zero ,
                      itemCount: categories.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                      return CategoryTile(image: categories[index],name: Categoryname[index],);  
                      }
                      ) ,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),//เว้นระยะห่าง
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Products",//สินค้าทั้งหมด
                  style: AppWidget.semiboldTextFeildStyle()
                ),
                Text(
                  "See all",//ดูทั้งหมด
                  style: TextStyle(
                    color: (const Color.fromARGB(255, 112, 80, 49)),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,)
                )
              ],
            ),
            SizedBox(height: 30,),
           Container(
  height: 240,
  child: ListView(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    children: [
      Container(
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
              child: Image.asset(
                "images/3.jpg",
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            
            // ชื่อสินค้า
            Text(
              "Tomato tree",
              style: AppWidget.semiboldTextFeildStyle(),
            ),
            SizedBox(height: 15),
            
            // ราคาและปุ่ม
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "฿20",//ราคา
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
                    
                  ],
                ),
              ],
            ),
          ),
          Container(
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
              child: Image.asset(
                "images/2.jpg",
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            
            // ชื่อสินค้า
            Text(
              " Petrea volubilis",
              style: AppWidget.semiboldTextFeildStyle(),
            ),
            SizedBox(height: 15),
            
            // ราคาและปุ่ม
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "฿45",//ราคา
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
                        color: (const Color.fromARGB(255, 112, 80, 49)),//สี
                        borderRadius: BorderRadius.circular(8),//ความโค้งมน
                      ),
                      child: Icon(//ไอคอนปุ่ม
                        Icons.shopping_cart_outlined,
                        color: Colors.white,//สี
                        size: 20,//ขนาด
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
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
              child: Image.asset(
                "images/4.jpg",
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            
            // ชื่อสินค้า
            Text(
              " Mammillaria Plumosa",
              style: AppWidget.semiboldTextFeildStyle(),
            ),
            SizedBox(height: 15),
            
            // ราคาและปุ่ม
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "฿35",//ราคา
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
                        color: (const Color.fromARGB(255, 112, 80, 49)),//สี
                        borderRadius: BorderRadius.circular(8),//ความโค้งมน
                      ),
                      child: Icon(//ไอคอนปุ่ม
                        Icons.shopping_cart_outlined,
                        color: Colors.white,//สี
                        size: 20,//ขนาด
                      ),
                    ),
              ],
            ),
          ]
          ), 
          ), 
          Container(
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
              child: Image.asset(
                "images/1.jpg",
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            
            // ชื่อสินค้า
            Text(
              " Passiflora edulis",
              style: AppWidget.semiboldTextFeildStyle(),
            ),
            SizedBox(height: 15),
            
            // ราคาและปุ่ม
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "฿45",//ราคา
                  style: TextStyle(
                    color: (const Color.fromARGB(255, 112, 80, 49)),//สี
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
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
         ],
          ),
          ]
       ) 
          )
          ]
      )
      )
          ]
        )
      )
            );
         
  }
}
  // ignore: must_be_immutable
  class CategoryTile extends StatelessWidget{
    String image,name;
    CategoryTile({required this.image,required this.name});

    @override
    Widget build (BuildContext constext){
      return GestureDetector(
        onTap: (){
          Navigator.push(constext, MaterialPageRoute(builder: (constext)=>CategoryProducts(category: name) ));
        },
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Image.asset(image, 
            height: 50,
            width: 50, 
            fit: BoxFit.cover,),
            Icon(Icons.arrow_forward,color:Color.fromARGB(255, 79, 55, 32),) //ไอค่อนชีไปทางขวา
            
          ],),
        ),
      );
    }
  }
