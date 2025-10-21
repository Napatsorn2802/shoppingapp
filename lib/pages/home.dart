/*import 'package:flutter/material.dart';
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
                color:Colors.black)),
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
                    color: (Colors.red),
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
                    color:Color(0xFFFD6F3E),
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
                      return CategoryTile(image: categories[index]);  
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
                    color: (Colors.red),
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
                    color: Color(0xFFfd6f3e),//สี
                    fontSize: 22,//ขนาด
                    fontWeight: FontWeight.bold,//ความหนา
                  ),
                ),
                SizedBox(width: 40),//ระยะห่าง
                    Container(
                      padding: EdgeInsets.all(6),//ขนาดปุ่ม
                      decoration: BoxDecoration(//ตกแต่งปุ่ม
                        color: Color(0xFFfd6f3e),//สี
                        borderRadius: BorderRadius.circular(8),//ความโค้งมน
                      ),
                      child: Icon(//ไอคอนปุ่ม
                        Icons.add,//ไอคอนบวก
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
                    color: Color(0xFFfd6f3e),//สี
                    fontSize: 22,//ขนาด
                    fontWeight: FontWeight.bold,//ความหนา
                  ),
                ),
                SizedBox(width: 40),//ระยะห่าง
                    Container(
                      padding: EdgeInsets.all(6),//ขนาดปุ่ม
                      decoration: BoxDecoration(//ตกแต่งปุ่ม
                        color: Color(0xFFfd6f3e),//สี
                        borderRadius: BorderRadius.circular(8),//ความโค้งมน
                      ),
                      child: Icon(//ไอคอนปุ่ม
                        Icons.add,//ไอคอนบวก
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
                    color: Color(0xFFfd6f3e),//สี
                    fontSize: 22,//ขนาด
                    fontWeight: FontWeight.bold,//ความหนา
                  ),
                ),
                SizedBox(width: 40),//ระยะห่าง
                    Container(
                      padding: EdgeInsets.all(6),//ขนาดปุ่ม
                      decoration: BoxDecoration(//ตกแต่งปุ่ม
                        color: Color(0xFFfd6f3e),//สี
                        borderRadius: BorderRadius.circular(8),//ความโค้งมน
                      ),
                      child: Icon(//ไอคอนปุ่ม
                        Icons.add,//ไอคอนบวก
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
                    color: Color(0xFFfd6f3e),//สี
                    fontSize: 22,//ขนาด
                    fontWeight: FontWeight.bold,//ความหนา
                  ),
                ),
                SizedBox(width: 40),//ระยะห่าง
                    Container(
                      padding: EdgeInsets.all(6),//ขนาดปุ่ม
                      decoration: BoxDecoration(//ตกแต่งปุ่ม
                        color: Color(0xFFfd6f3e),//สี
                        borderRadius: BorderRadius.circular(8),//ความโค้งมน
                      ),
                      child: Icon(//ไอคอนปุ่ม
                        Icons.add,//ไอคอนบวก
                        color: Colors.white,//สี
                        size: 20,//ขนาด
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
    String image;
    CategoryTile({required this.image});
    @override
    Widget build (BuildContext constext){
      return Container(
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
          Icon(Icons.arrow_forward)
        ],),
      );
    }
  }*/
import 'package:flutter/material.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "images/icons8-tree-50.png",
    "images/icons8-flower-50.png",
    "images/icons8-cactus-50.png",
    "images/icons8-fruit-50.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F9F5),
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
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
                    Row(
                      children: [
                        Text(
                          "Hey, shivam",
                          style: AppWidget.boldTextFeildStyle(),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.eco, color: Color(0xFF2E7D32), size: 20),
                      ],
                    ),
                    Text(
                      "Good morning",
                      style: AppWidget.lightTextFeildStyle(),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFF4CAF50),
                      width: 3,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "images/user1.jpg",
                      height: 75,
                      width: 75,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            // ช่องค้นหาสินค้า
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Color(0xFF4CAF50).withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Products",//ค้นหา
                  hintStyle: AppWidget.lightTextFeildStyle(),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF4CAF50),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // หมวดหมู่
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [//หมวดหมู่
                Text("Categories", style: AppWidget.semiboldTextFeildStyle()),
                Text(
                  "See all",//ดูทั้งหมด
                  style: TextStyle(
                    color: Color(0xFF4CAF50),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // ปุ่ม All
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF2E7D32), Color(0xFF4CAF50)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Color(0xFF4CAF50).withOpacity(0.3),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.apps, color: Colors.white, size: 35),
                          SizedBox(height: 8),
                          Text(
                            "All",//ทั้งหมด
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Categories
                  ...List.generate(
                    categories.length,
                    (index) => CategoryTile(image: categories[index]),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 30),

            // สินค้าทั้งหมด
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [//สินค้าทั้งหมด
                Text("All Products", style: AppWidget.semiboldTextFeildStyle()),
                Text(
                  "See all",//ดูทั้งหมด
                  style: TextStyle(
                    color: Color(0xFF4CAF50),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),

            // รายการสินค้า
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductCard(
                    image: "images/3.jpg",
                    name: "Tomato tree",
                    price: "฿20",
                  ),
                  ProductCard(
                    image: "images/2.jpg",
                    name: "Petrea volubilis",
                    price: "฿45",
                  ),
                  ProductCard(
                    image: "images/4.jpg",
                    name: "Mammillaria",
                    price: "฿35",
                  ),
                  ProductCard(
                    image: "images/1.jpg",
                    name: "Passiflora edulis",
                    price: "฿45",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget สำหรับหมวดหมู่
class CategoryTile extends StatelessWidget {
  final String image;
  CategoryTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Color(0xFFE8F5E9),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Color(0xFF2E7D32),
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}

// Widget สำหรับการ์ดสินค้า
class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  ProductCard({
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: EdgeInsets.only(right: 15, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // รูปสินค้า
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.asset(
                image,
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // ข้อมูลสินค้า
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E7D32),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color: Color(0xFF2E7D32),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF2E7D32), Color(0xFF4CAF50)],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            // ignore: deprecated_member_use
                            color: Color(0xFF4CAF50).withOpacity(0.3),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}