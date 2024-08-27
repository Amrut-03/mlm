import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlm/widgets/bottom_nav_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 395,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(120),
                          bottomRight: Radius.circular(120)),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFFDEF2FF),
                            Color(0xFF3F7FA7),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Center(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 230,
                      ),
                      Text(
                        'Welcome Back',
                        style: GoogleFonts.inter(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Mobile Number',
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 310,
                        height: 44,
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFA8A8A8)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter The Password',
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 44,
                        width: 310,
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFA8A8A8)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavBar()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(310, 44),
                        elevation: 0,
                        backgroundColor: Color(0xFFDEF2FF)),
                    child: Text(
                      'Continue',
                      style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    )),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'My World Network Private Limited',
                  style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF009DFF)),
                )
              ],
            ),
            Positioned(
              top: 320,
              left: 130,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 75,
                    backgroundColor: Color(0xFFF3F8FF),
                  ),
                  // Positioned(
                  //   child:
                  // SvgPicture.asset(
                  //   'assets/images/mlm.svg',
                  //   height: 100,
                  //   width: 100,
                  // )
                  // )
                  Positioned(
                      top: 17,
                      left: 17,
                      child:
                          ClipOval(child: Image.asset('assets/images/mlm.png')))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
