import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/pages/Order.dart';
import 'package:shoppingapp/pages/home.dart';
import 'package:shoppingapp/pages/profile.dart';

class Bottomnev extends StatefulWidget{
const Bottomnev({super.key});

@override
State<Bottomnev> createState() => _BottomNavState();
}

class _BottomNavState extends State<Bottomnev>{
  late List<Widget> pages;

  late Home HomePage;
  late Order order;
  late Profile profile;
  int currentTabIndex=0;

  @override
  void initState(){
    HomePage = Home();
    order = Order();
    profile = Profile();
    pages =[HomePage,order,profile];
    super.initState();
  }


  @override
  Widget build(BuildContext constext){
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds:500 ),
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
          });
        },
        items: [
        Icon(//ไอค่อนหน้าหลํก
          Icons.home_outlined,
        color:Colors.white,
        ),
        Icon(//ไอค่อนหน้าสินค้า
          Icons.shopping_bag_outlined,
        color:Colors.white,
        ),
        Icon(//ไอค่อนบัญชี
          Icons.person_outlined,
        color:Colors.white,
        )]),
        body: pages[currentTabIndex],
      );
  }
}