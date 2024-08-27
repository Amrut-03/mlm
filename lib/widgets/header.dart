import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Header extends StatelessWidget {
  String txt;
  Header({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 213,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        gradient: LinearGradient(
            colors: [Color(0xFFDEF2FF), Color(0xFF3F7FA7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Column(
        children: [
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset(
                      'assets/images/mlm.png',
                      height: 20,
                      width: 20,
                    )),
                Text(
                  'Welcome Back',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SvgPicture.asset('assets/images/menu.svg'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Main Balance',
            style: GoogleFonts.rubik(
                fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              txt == 'Not Eligible' || txt == 'Eligible'
                  ? Container()
                  : SvgPicture.asset(
                      'assets/images/rupee.svg',
                      height: 17.52,
                      width: 10,
                    ),
              const SizedBox(
                width: 10,
              ),
              Text(
                txt,
                style: GoogleFonts.rubik(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
