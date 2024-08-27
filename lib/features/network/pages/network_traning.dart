import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlm/widgets/small_header.dart';

class NetworkTraning extends StatelessWidget {
  const NetworkTraning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: SmallHeader(),
          ),
          Container(
            width: 350,
            height: 102,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: const Color(0xFFF3F8FF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Date: 31 Aug 2024 9:00 AM',
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Venue: Pondicherry',
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => BottomNavBar()));
            },
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 44),
                elevation: 0,
                backgroundColor: const Color(0xFFDEF2FF)),
            child: Text(
              'Continue',
              style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
