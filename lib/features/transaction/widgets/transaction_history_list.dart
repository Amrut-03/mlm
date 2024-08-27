import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 6,
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
                    index == 3
                        ? '29 Aug 2024 10:00 AM'
                        : '30 Aug 2024 03:45 PM',
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  Text(
                    index == 3 ? '-1000.00' : '+200.30',
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
