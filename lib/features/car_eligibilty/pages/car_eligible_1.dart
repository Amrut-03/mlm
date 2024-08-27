import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlm/widgets/header.dart';

class CarEligible1 extends StatelessWidget {
  const CarEligible1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(txt: 'Eligible'),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Text(
                'Can inform Admin and Avail the Car fund',
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF009DFF)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
