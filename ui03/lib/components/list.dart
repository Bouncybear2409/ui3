import 'package:flutter/material.dart';
import 'package:ui03/images/images.dart';

class List1 extends StatelessWidget {
  const List1({super.key});

  @override
Widget build(BuildContext context) {
  return  Row(
      children: [
        Container(
          width: 200,
          height: 300,
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
                      AppImages.dog,
                      width: 220,
                      height: 220,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Column(children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Progy',
                            style: TextStyle(
                              color: Color(0xFF0F0F0F),
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0.09,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            width: 62,
                            height: 20,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 2),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFCB3AE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Female',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFFFA1D0F),
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 0.16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'German Shorth',
                        style: TextStyle(
                          color: Color(0xFF7A6F81),
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          width: 200,
          height: 300,
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
                      AppImages.cat,
                      width: 220,
                      height: 220,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Column(children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Progy',
                            style: TextStyle(
                              color: Color(0xFF0F0F0F),
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0.09,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            width: 62,
                            height: 20,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 2),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFCB3AE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Female',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFFFA1D0F),
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 0.16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'German Shorth',
                        style: TextStyle(
                          color: Color(0xFF7A6F81),
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
}
  }
