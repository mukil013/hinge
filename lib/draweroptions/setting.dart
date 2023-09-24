import 'package:flutter/material.dart';
import 'dart:ui';

class Settingg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xfff9eae1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(27 * fem, 8 * fem, 23 * fem, 9 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff7d4f50),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 250 * fem, 0 * fem),
                    child: Text(
                      'Hinge',
                      style: TextStyle(
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: const Color(0xffd1be9c),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                    width: 18 * fem,
                    height: 12 * fem,
                    child: Image.asset(
                      'assets/page-1/images/menu-Woj.png',
                      width: 18 * fem,
                      height: 12 * fem,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 51 * fem,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 16 * fem, 0 * fem),
                padding: EdgeInsets.fromLTRB(8 * fem, 26 * fem, 8 * fem, 8 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff7d4f50),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(9 * fem, 0 * fem, 6 * fem, 54 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 36 * fem),
                                      child: Text(
                                        'Language',
                                        style: TextStyle(
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.365 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 43 * fem),
                                      child: Text(
                                        'Notification',
                                        style: TextStyle(
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.365 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 40 * fem),
                                      child: Text(
                                        'Change password',
                                        style: TextStyle(
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.365 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 45 * fem),
                                      child: Text(
                                        'Delete account',
                                        style: TextStyle(
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.365 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 230 * fem),
                                      child: Text(
                                        'English',
                                        style: TextStyle(
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.365 * ffem / fem,
                                          color: const Color(0x4ff9eae1),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Update',
                                      style: TextStyle(
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.365 * ffem / fem,
                                        color: const Color(0x66f9eae1),
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
                    Container(
                      width: double.infinity,
                      height: 72 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xffdb3f3f),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(13 * fem),
                          bottomLeft: Radius.circular(13 * fem),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Sign out',
                          style: TextStyle(
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: const Color(0xfff9eae1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 51 * fem,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(46 * fem, 26 * fem, 38 * fem, 48 * fem),
              width: double.infinity,
              height: 96 * fem,
              decoration: BoxDecoration(
                color: const Color(0xe57d4f50),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15 * fem),
                  topRight: Radius.circular(15 * fem),
                ),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 6 * fem,
                    sigmaY: 6 * fem,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 119 * fem, 5 * fem),
                        width: 20 * fem,
                        height: 17 * fem,
                        child: Image.asset(
                          'assets/page-1/images/home-JEV.png',
                          width: 20 * fem,
                          height: 17 * fem,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 127 * fem, 0 * fem),
                        width: 20 * fem,
                        height: 20 * fem,
                        child: Image.asset(
                          'assets/page-1/images/message-text-NqF.png',
                          width: 20 * fem,
                          height: 20 * fem,
                        ),
                      ),
                      Container(
                        width: 20 * fem,
                        height: 20 * fem,
                        child: Image.asset(
                          'assets/page-1/images/cart-N2m.png',
                          width: 20 * fem,
                          height: 20 * fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
