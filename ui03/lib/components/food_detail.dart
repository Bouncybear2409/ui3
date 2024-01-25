import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui03/images/images.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key,
  required this.text,
  required this.price

  });

    final String text;
    final String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.sp,
      height: 110.sp,
      child: Stack(
        children: [
          Positioned(
            left: 0.sp,
            top: 35.sp,
            child: Container(
              width: 90.sp,
              height: 75.sp,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 20,
                    offset: Offset(2, 6),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 16.sp,
            top: 0.sp,
            child: Container(
              width: 61.sp,
              height: 96.sp,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.fooddetail),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 105.sp,
            top: 30.sp,
            child: Text(
              text,
              style:  TextStyle(
                color: const Color(0xFF1D072A),
                fontSize: 16.sp,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0.09,
              ),
            ),
          ),
         Positioned(
            left: 105.sp,
            top: 88.sp,
            child: SizedBox(
              width: 63.sp,
              child: Text(
                price,
                style:  TextStyle(
                  color: const Color(0xFF647DFF),
                  fontSize: 16.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0.09,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 135,
            top: 60,
            child: Text(
              'Size: 14-oz bag',
              style: TextStyle(
                color: Color(0xFF7A6F81),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0.10,
              ),
            ),
          ),
          Positioned(
            left: 325,
            top: 30,
            child: SizedBox(
              width: 24.sp,
              height: 24.sp,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 24.sp,
                      height: 24.sp,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 22.sp,
                            top: 22.sp,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(-3.14),
                              child: const Icon(Icons.arrow_circle_down)
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
           Positioned(
            left: 325,
            top: 90,
            child: SizedBox(
              width: 24.sp,
              height: 24.sp,
              child: Stack(
                children: [
                  Positioned(
                    left: 0.sp,
                    top: 0.sp,
                    child: SizedBox(
                      width: 24.sp,
                      height: 24.sp,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 2.sp,
                            top: 2.sp,
                            child: SizedBox(
                              width: 20.sp,
                              height: 20.sp,
                                child: const Icon(Icons.arrow_circle_down)
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
          Positioned(
            left: 325,
            top: 68,
            child: Text(
              '01',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF1D072A),
                fontSize: 14.sp,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0.10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
