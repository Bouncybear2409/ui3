import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui03/pages/home.dart';
import 'package:ui03/images/images.dart';
import 'package:ui03/components/listgroup.dart';

class Adoption extends StatelessWidget {
  const Adoption({super.key});

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
                'Adoption',
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
        body: const ListGroup(),
      ),
    );
  }
}
