import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlm/features/car_eligibilty/widgets/eligible_car_list.dart';
import 'package:mlm/widgets/header.dart';

class CarEligible2 extends StatelessWidget {
  const CarEligible2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(txt: "Eligible"),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Car EMI',
                  style: GoogleFonts.rubik(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  '24 Months',
                  style: GoogleFonts.rubik(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF009DFF)),
                )
              ],
            ),
          ),
          EligibleCarList()
        ],
      ),
    );
  }
}
