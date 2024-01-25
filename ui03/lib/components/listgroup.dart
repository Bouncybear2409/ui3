import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui03/images/images.dart';
import 'package:ui03/components/list.dart';

class ListGroup extends StatelessWidget {
  const ListGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 250.sp,
                  height: 200.sp,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 192, 192),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppImages.doggroup,
                              width: 250.sp,
                              height: 180.sp,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 250.sp,
                          height: 70.sp,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 30.sp,
                                  ),
                                  const Text(
                                    'Pet-holic Club',
                                    style: TextStyle(
                                      color: Color(0xFF1D072A),
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      height: 0.09,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80.sp,
                                  ),
                                  const Icon(Icons.clear)
                                ],
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 30.sp,
                                  ),
                                  Text(
                                    '150k Members ',
                                    style: TextStyle(
                                      color: const Color(0xFF7A6F81),
                                      fontSize: 14.sp,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      height: 0.10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.sp,
                ),
                Container(
                  width: 250.sp,
                  height: 200.sp,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 234, 255),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppImages.doggroup,
                              width: 250.sp,
                              height: 180.sp,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 250.sp,
                          height: 70.sp,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 30.sp,
                                  ),
                                  Text(
                                    'Meowmeow',
                                    style: TextStyle(
                                      color: const Color(0xFF1D072A),
                                      fontSize: 16.sp,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      height: 0.09,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80.sp,
                                  ),
                                  const Icon(Icons.clear)
                                ],
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 30.sp,
                                  ),
                                  const Text(
                                    '145k Members',
                                    style: TextStyle(
                                      color: Color(0xFF7A6F81),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      height: 0.10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
               
              ],
            ),
          ),
           SizedBox(height: 20.sp),
            Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 180.sp,
                        height: 40.sp,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 126, 126),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'Dog',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60.sp,
                      ),
                      TextButton(
                        onPressed: () {
                      
                        },
                        child: Text(
                          'See more >>',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 126, 126),
                            fontSize: 12.0.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [SizedBox(width: 20.sp), const List1()],
                  ),
                  SizedBox(height: 20.sp,),
                   Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 180.sp,
                        height: 40.sp,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'Cat',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60.sp,
                      ),
                      TextButton(
                        onPressed: () {
                      
                        },
                        child: Text(
                          'See more >>',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12.0.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 0.14,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [SizedBox(width: 20.sp), const List1()],
                  ),
        ],
      ),
    );
  }
}
