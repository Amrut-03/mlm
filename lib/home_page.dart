import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlm/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(txt: '1,00,000.30'),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                width: 350,
                height: 102,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.black),
                  color: Color(0xFFF3F8FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Direct Referral',
                        style: GoogleFonts.saira(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF999999)),
                      ),
                      Text(
                        '30',
                        style: GoogleFonts.rubik(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF009DFF)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 102,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.black),
                  color: Color(0xFFF3F8FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Team Sales',
                        style: GoogleFonts.saira(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF999999)),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '600',
                              style: GoogleFonts.rubik(
                                fontSize: 30, // Larger font size
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF009DFF), // Bright blue color
                              ),
                            ),
                            TextSpan(
                              text: '/month',
                              style: GoogleFonts.rubik(
                                fontSize:
                                    15, // Same font size but different color
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF8ED4FF), // Light blue color
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 102,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.black),
                  color: Color(0xFFF3F8FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Plan Name',
                        style: GoogleFonts.saira(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF999999)),
                      ),
                      Text(
                        'Premium',
                        style: GoogleFonts.rubik(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF009DFF)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 102,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.black),
                  color: Color(0xFFF3F8FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Royalty Income',
                        style: GoogleFonts.saira(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF999999)),
                      ),
                      Text(
                        'Platinum',
                        style: GoogleFonts.rubik(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF009DFF)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
