import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui03/components/food_detail.dart';
import 'package:ui03/pages/home.dart';
import 'package:ui03/images/images.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home(
                              title: '',
                            )),
                  );
                },
              ),
              SizedBox(width: 120.sp),
              Text(
                'Food',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0.07,
                ),
              ),
              SizedBox(width: 50.sp),
              Image.asset(
                AppImages.avatar,
                height: 40.sp,
                width: 40.sp,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.sp,
              ),
              const FoodDetail(text: ' Stella s Super Beef ', price: '29.99\$'),
              SizedBox(
                height: 10.sp,
              ),
              const FoodDetail(text: 'Chewy’s Chicken', price: '25.5\$'),
              SizedBox(
                height: 10.sp,
              ),
              const FoodDetail(text: 'Duck Duck Goose', price: '26.3\$'),
              SizedBox(
                height: 10.sp,
              ),
              const FoodDetail(text: 'Stella s Super Beef ', price: '22.8\$'),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 320.sp,
                    height: 50.sp,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Payment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 0.09,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
