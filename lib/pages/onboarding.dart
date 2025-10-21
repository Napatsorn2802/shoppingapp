import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE8F4F3),
              Color(0xFFF5F9F8),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // รูปภาพส่วนบน
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "images/12.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // ส่วนข้อความและปุ่ม
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ไอคอนตกแต่ง
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          // ignore: deprecated_member_use
                          color: Color(0xFF7FB685).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.local_florist,
                          color: Color(0xFF2D5F3F),
                          size: 28,
                        ),
                      ),
                      
                      SizedBox(height: 24.0),
                      
                      // ข้อความหลัก
                      Text(
                        "Welcome to",
                        style: TextStyle(
                          color: Color(0xFF5A7C65),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        "Our Plant Shop",
                        style: TextStyle(
                          color: Color(0xFF2D5F3F),
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ),
                      
                      SizedBox(height: 16.0),
                      
                      // คำบรรยาย
                      Text(
                        "ค้นพบต้นไม้และพืชพรรณนาๆชนิดที่แสนสวยงาม\nเพื่อตกแต่งบ้านและสวนของคุณ 🌿",
                        style: TextStyle(
                          color: Color(0xFF6B8E76),
                          fontSize: 16.0,
                          height: 1.5,
                        ),
                      ),
                      
                      SizedBox(height: 40.0),
                      
                      // ปุ่มเริ่มต้น
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            // นำทางไปหน้าถัดไป
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 18,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF3D7C4F),
                                  Color(0xFF5FA573),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  // ignore: deprecated_member_use
                                  color: Color(0xFF5FA573).withOpacity(0.4),
                                  blurRadius: 12,
                                  offset: Offset(0, 6),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Next",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}