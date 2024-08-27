import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NetworkProfileList extends StatelessWidget {
  const NetworkProfileList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> details = [
      'Name',
      'Mobile Number',
      'Address',
      'PAN Number',
      'Direct Referal',
      'Package',
      'Refered by',
      'Joined on'
    ];
    List<String> info = [
      'Sarath Kumar 1',
      '+91 8111012000',
      'Trichy',
      'ABCDE1234F',
      '30',
      'Basic',
      'Suresh',
      '25 July 2024'
    ];
    return Expanded(
        child: ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    details[index],
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    info[index],
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF009DFF)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        );
      },
    ));
  }
}
