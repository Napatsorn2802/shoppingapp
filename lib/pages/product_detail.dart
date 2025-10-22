/*import 'package:flutter/material.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class ProductDetail extends StatefulWidget{
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFfef5f1),
      body:Container(
        padding: EdgeInsets.only(top:90,left: 15,right: 15),//ตั้งค่าบนซ้ายขวาของภาพ
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Stack(
              children:[ GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left:20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30)),
                child:Icon(Icons.arrow_back_ios_new_outlined),),
              ),
              Center(child: Image.asset("images/3.jpg",height: 250,))//รูปสินค้า ขนาดรูป
          ],),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top:20,left: 20,right: 20),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              ),
              width: MediaQuery.of(context).size.width,child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//ให้ข้อความเว้นระยะห่างให้เหมาะสม
                    children: [
                      Text("Tomato tree",style:AppWidget.boldTextFeildStyle()),
                       // ignore: unnecessary_string_escapes
                       Text("\฿25",
                        style: TextStyle(
                        color: (const Color.fromARGB(255, 112, 80, 49)),
                        fontSize: 23,
                        fontWeight: FontWeight.bold,)
                    )
                    ],
                   ),
                   SizedBox(height: 20,),
                       //รายละเอียดสินค้า
                   Text("Details",style: AppWidget.semiboldTextFeildStyle(),),
                   SizedBox(height: 10,),
                   //ต้นมะเขือเทศขนาดลำต้นสูง3เมตร มีรสเปรี้ยวหวาน
                   Text("Tomato plants with a trunk height of 3 meters and a sweet and sour taste."),
                    SizedBox(height: 200,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),//ระยะห่างบนล่าง
                      decoration: BoxDecoration(
                        color: (const Color.fromARGB(255, 112, 80, 49)),borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Center(child: Text("Buy Now",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                    )
                 ],
               ),
            ),
          )
          ],),)
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class ProductDetail extends StatefulWidget{
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFF8F4F0), // สีครีมอ่อน
      body: Column(
        children: [
          // ส่วนบน - รูปภาพและปุ่มย้อนกลับ
          Container(
            height: MediaQuery.of(context).size.height * 0.48,
            decoration: BoxDecoration(
              color: Color(0xFFE8D7C8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35)
              ),
            ),
            child: Stack(
              children: [
                // ปุ่มย้อนกลับ - ไม่ทับรูป
                Positioned(
                  top: 55,
                  left: 20,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 8,
                            offset: Offset(0, 2)
                          )
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 20,
                        color: Colors.black87
                      ),
                    ),
                  ),
                ),
                // รูปภาพตรงกลาง
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 20,
                          offset: Offset(0, 10)
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "images/3.jpg",
                        height: 300,
                        width: 300,
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // ส่วนล่าง - รายละเอียดสินค้า
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35)
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ชื่อและราคา
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Tomato tree",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          letterSpacing: -0.5
                        )
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                        decoration: BoxDecoration(
                          color: Color(0xFF6B4423).withOpacity(0.12),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          "฿25",
                          style: TextStyle(
                            color: Color(0xFF6B4423),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 24),
                  // หัวข้อ Details
                  Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87
                    ),
                  ),
                  SizedBox(height: 12),
                  // รายละเอียด
                  //ต้นมะเขือเทศขนาดลำต้นสูง3เมตร มีรสเปรี้ยวหวาน
                  Text(
                    "Tomato plants with a trunk height of 3 meters and a sweet and sour taste.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade600,
                      height: 1.6,
                      letterSpacing: 0.2
                    ),
                  ),
                  Spacer(),
                  // ปุ่ม Buy Now
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFF6B4423),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF6B4423).withOpacity(0.35),
                          blurRadius: 12,
                          offset: Offset(0, 6)
                        )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart, color: Colors.white, size: 20),
                        SizedBox(width: 8),
                        Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}