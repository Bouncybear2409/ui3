import 'dart:async';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui03/pages/adoption.dart';
import 'package:ui03/pages/food.dart';
import 'package:ui03/images/images.dart';
import 'package:ui03/components/list.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required String title}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imagePaths = [
    AppImages.dog01,
    AppImages.dog01,
    AppImages.dog01,
    // Thêm các hình ảnh khác vào đây
  ];

  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_pageController.page == imagePaths.length - 1) {
        _pageController.jumpToPage(0);
      } else {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(AppImages.iconmenu),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.0.sp),
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  AppImages.avatar,
                ),
                radius: 14.0,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200.sp,
                  child: Stack(
                    children: [
                      PageView.builder(
                        controller: _pageController,
                        itemCount: imagePaths.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                imagePaths[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                      Positioned(
                        bottom: 10.0,
                        left: 0,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          child: DotsIndicator(
                            controller: _pageController,
                            itemCount: imagePaths.length,
                            color: Colors.grey,
                            selectedColor: Colors.blue,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20.0.sp,
                        left: 50.0.sp,
                        right: 50.0.sp,
                        child: Container(
                          width: 200.sp,
                          height: 60.sp,
                          decoration: ShapeDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 20.sp,
                              ),
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              const Text(
                                "1,8k",
                                style: TextStyle(color: Colors.red),
                              ),
                              SizedBox(
                                width: 20.sp,
                              ),
                              const Icon(
                                Icons.home,
                                color: Colors.green,
                              ),
                              const Text(
                                "864",
                                style: TextStyle(color: Colors.green),
                              ),
                              SizedBox(
                                width: 20.sp,
                              ),
                              const Icon(
                                Icons.person,
                                color: Colors.blue,
                              ),
                              const Text(
                                "158",
                                style: TextStyle(color: Colors.blue),
                              ),
                              SizedBox(
                                width: 20.sp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 200.sp,
                      height: 40.sp,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 126, 126),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Adoption',
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Adoption()),
                        );
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
                SizedBox(
                  height: 20.sp,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 250.sp,
                      height: 40.sp,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text(
                        'Accessories For Pet ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.sp,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Food()
                          ),
                        );
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
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 245, 245, 245),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.explore),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotsIndicator extends AnimatedWidget {
  const DotsIndicator({
    super.key,
    required this.controller,
    required this.itemCount,
    this.color = Colors.white,
    this.selectedColor = Colors.blue,
  }) : super(listenable: controller);

  final PageController controller;
  final int itemCount;
  final Color color;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        double selectedness = Curves.easeOut.transform(
          max(
              0.0,
              1.0 -
                  ((controller.page ?? controller.initialPage) - index).abs()),
        );
        return Container(
          width: 8.0.sp,
          height: 8.0.sp,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.lerp(color, selectedColor, selectedness),
          ),
        );
      }),
    );
  }
}
