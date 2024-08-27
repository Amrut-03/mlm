import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EligibleCarList extends StatelessWidget {
  const EligibleCarList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> month = [
      'Jan 2024',
      'Feb 2024',
      'Mar 2024',
      'Apr 2024',
      'May 2024',
      'Jun 2024',
      'Jul 2024',
      'Aug 2024'
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
                    month[index],
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  Text(
                    index == 3 ? 'Not Eligible' : 'Released',
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color:
                            index == 3 ? Color(0xFFC00000) : Color(0xFF00C04A)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            const Divider(
              indent: 25,
              endIndent: 25,
            )
          ],
        );
      },
    ));
  }
}
