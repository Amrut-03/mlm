import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlm/features/network/widgets/network_profile_list.dart';
import 'package:mlm/widgets/small_header.dart';

class NetworkProfile extends StatelessWidget {
  const NetworkProfile({super.key});

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Profile',
                  style: GoogleFonts.rubik(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF009DFF)),
                ),
              ],
            ),
          ),
          const NetworkProfileList(),
        ],
      ),
    );
  }
}
