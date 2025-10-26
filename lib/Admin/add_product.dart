/*import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';
import 'package:shoppingapp/services/detabase.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class AddProduct extends StatefulWidget{
  const AddProduct({super.key});

@override
State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
final ImagePicker _picker= ImagePicker() ;
File? selectedImage;  
TextEditingController namecontroller = new TextEditingController();

Future getImage()async{
  var image= await _picker.pickImage(source: ImageSource.gallery);
  selectedImage = File(image!.path);
  setState(() {
    
  });
}
uploadItem()async{
  if(selectedImage!=null &&namecontroller.text!=""){
    String addId= randomAlphaNumeric(10);
    Reference firebaseStorageRef = FirebaseStorage.instance.ref().child("blogImage").child((addId));//ชื่อของโฟเดอร์รูปที่เวลามีสินค้ารูปจะมาอยู่โฟเดอร์นี้
  
    final UploadTask task= firebaseStorageRef.putFile(selectedImage!);
    var dowloadUrl= await (await task).ref.getDownloadURL();

    Map<String, dynamic> addProduct={
      "Name": namecontroller.text,
      "Image": dowloadUrl,
    };
    await DatabaseMethods().addProduct(addProduct, value!).then((value){
      selectedImage=null;
      namecontroller.text="";
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
         backgroundColor:Colors.redAccent ,
                        //สินค้าถูกอัพโหลดเรียบร้อยแล้ว!!
         content: Text("Product been uploaded Successfully!!", style: TextStyle(fontSize: 20),),));
    });
  }
}
  String? value;
    final List<String> categoryitem=['tree','flower','cantus','fruit'];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text("Add Product", 
        style:AppWidget.semiboldTextFeildStyle()),),
      body:Container(
        margin:EdgeInsets.only(left:20,top:20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              //อัพโหลดรูปสินค้า                              //ทำให้ข้อความมีความเจือจาง
        Text("Upload the Product Image", style: AppWidget.lightTextFeildStyle(),),
        SizedBox(height: 20,),
        selectedImage==null? GestureDetector(
          onTap: (){
            getImage();
          },
          child: Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black,width: 1.5),
                borderRadius: BorderRadius.circular(20)//ความโค้งมมของกรอบ
              ),
              child: Icon(Icons.camera_alt_outlined),
            ),
          ),
        )
        : Center(
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                border:Border.all(color:Colors.black,width: 1.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.file(
                  selectedImage!, 
                  fit: BoxFit.cover)),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Text(
          "Product Name",//ชื่อสินค้า
          style: AppWidget.lightTextFeildStyle(),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color:Colors.white,
          borderRadius:BorderRadius.circular(20),),
          child: TextField(
            controller: namecontroller,
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
        SizedBox(height: 40,),
        Text(
          "Product Category",//หมวดหมู่สินค้า
          style: AppWidget.lightTextFeildStyle(),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              items: categoryitem
              .map((item) => DropdownMenuItem(
            value:item, 
            child: Text(item, 
              style:AppWidget.semiboldTextFeildStyle(),))).toList(),
            onChanged:((value) => setState(() {
             this.value=value;
                     })),
                     dropdownColor: Colors.white,
                      // เลือกหมวดหมู่
                     hint:Text("Select Category"),
                     iconSize: 36,
                     icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
                     value:value,),
          )),
          SizedBox(height: 30,),
          Center(child: ElevatedButton(onPressed: (){
            uploadItem();
          }, child: Text("Add Product" ,style: TextStyle(fontSize: 20),)))
          ]
        )
      ,),);
    
  }
}*/
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';
import 'package:shoppingapp/services/detabase.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class AddProduct extends StatefulWidget{
  const AddProduct({super.key});

@override
State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
final ImagePicker _picker= ImagePicker() ;
File? selectedImage;  
TextEditingController namecontroller = new TextEditingController();
TextEditingController pricecontroller = new TextEditingController();
TextEditingController detailcontroller = new TextEditingController();

Future getImage()async{
  var image= await _picker.pickImage(source: ImageSource.gallery);
  selectedImage = File(image!.path);
  setState(() {
    
  });
}
uploadItem()async{
  if(selectedImage!=null &&namecontroller.text!=""){
    String addId= randomAlphaNumeric(10);
    Reference firebaseStorageRef = FirebaseStorage.instance.ref().child("blogImage").child((addId));//ชื่อของโฟเดอร์รูปที่เวลามีสินค้ารูปจะมาอยู่โฟเดอร์นี้
  
    final UploadTask task= firebaseStorageRef.putFile(selectedImage!);
    var dowloadUrl= await (await task).ref.getDownloadURL();

    Map<String, dynamic> addProduct={
      "Name": namecontroller.text,
      "Image": dowloadUrl,
      "Price": pricecontroller.text,
      "Detail": detailcontroller.text
    };
    await DatabaseMethods().addProduct(addProduct, value!).then((value){
      selectedImage=null;
      namecontroller.text="";
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
         backgroundColor:Color(0xFF8B6F47),
                        //สินค้าถูกอัพโหลดเรียบร้อยแล้ว!!
         content: Text("Product been uploaded Successfully!!", style: TextStyle(fontSize: 20),),));
    });
  }
}
  String? value;
    final List<String> categoryitem=['tree','flower','cantus','fruit'];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFFAF7F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAF7F5),
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined, color: Color(0xFF6B5444))),
        title: Text("Add Product", 
        style: TextStyle(
          color: Color(0xFF6B5444),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        )),
      ),
      body:SingleChildScrollView(
        child: Container(
          margin:EdgeInsets.only(left:20,top:20,right: 20, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                //อัพโหลดรูปสินค้า                              //ทำให้ข้อความมีความเจือจาง
          Text("Upload the Product Image", style: AppWidget.lightTextFeildStyle(),),
          SizedBox(height: 20,),
          selectedImage==null? GestureDetector(
            onTap: (){
              getImage();
            },
            child: Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color:Color(0xFF8B6F47),width: 2),
                  borderRadius: BorderRadius.circular(20),//ความโค้งมมของกรอบ
                  color: Colors.white,
                ),
                child: Icon(Icons.camera_alt_outlined, color: Color(0xFF8B6F47), size: 40),
              ),
            ),
          )
          : Center(
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border:Border.all(color:Color(0xFF8B6F47),width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.file(
                    selectedImage!, 
                    fit: BoxFit.cover)),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Text(
            "Product Name",//ชื่อสินค้า
            style: AppWidget.lightTextFeildStyle(),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(20),
              border: Border.all(color: Color(0xFFE8DED2), width: 1.5),
            ),
            child: TextField(
              controller: namecontroller,
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
           SizedBox(height: 30,),
          Text(
            "Product Price",//ราคาสินค้า
            style: AppWidget.lightTextFeildStyle(),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(20),
              border: Border.all(color: Color(0xFFE8DED2), width: 1.5),
            ),
            child: TextField(
              controller: pricecontroller,
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          SizedBox(height: 30,),
          Text(
            "Product Detail",//รายละเอียดสินค้า
            style: AppWidget.lightTextFeildStyle(),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius:BorderRadius.circular(20),
              border: Border.all(color: Color(0xFFE8DED2), width: 1.5),
            ),
            child: TextField(
              maxLines: 6,//เพิ่มขนาดช่อง
              controller: detailcontroller,
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          SizedBox(height: 40,),
          Text(
            "Product Category",//หมวดหมู่สินค้า
            style: AppWidget.lightTextFeildStyle(),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xFFE8DED2), width: 1.5),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                items: categoryitem
                .map((item) => DropdownMenuItem(
              value:item, 
              child: Text(item, 
                style:AppWidget.semiboldTextFeildStyle(),))).toList(),
              onChanged:((value) => setState(() {
               this.value=value;
                       })),
                       dropdownColor: Colors.white,
                        // เลือกหมวดหมู่
                       hint:Text("Select Category"),
                       iconSize: 36,
                       icon: Icon(Icons.arrow_drop_down, color: Color(0xFF8B6F47),),
                       value:value,),
            )),
              SizedBox(height: 40,),
            Center(
              child: GestureDetector(
                onTap: (){
                  uploadItem();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: BoxDecoration(
                    color: Color(0xFF6B5444),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF6B5444).withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Text(
                    "Add Product",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
            ]
          )
        ,),
      ),
    );
    
  }
}