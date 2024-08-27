import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlm/home_page.dart';
import 'package:mlm/features/car_eligibilty/pages/car_eligible_2.dart';
import 'package:mlm/features/transaction/pages/transaction.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    // CarNotEligible(),
    // CarEligible1(),
    CarEligible2(),
    TransactionPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_currentIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(right: 25, left: 25, bottom: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: _currentIndex,
            selectedLabelStyle: GoogleFonts.rubik(
              fontSize: 12, // Adjust the font size for the selected label
              fontWeight:
                  FontWeight.w700, // Set the font weight for the selected label
              color: Color(
                  0xFF009DFF), // Optional: Set a specific color for the selected label
            ),
            unselectedLabelStyle: GoogleFonts.rubik(
              fontSize: 12,

              fontWeight:
                  FontWeight.w700, // Set the font weight for unselected labels
              color: Color(
                  0xFFA8A8A8), // Optional: Set a specific color for unselected labels
            ),
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 3),
                  child: SvgPicture.asset(
                    'assets/images/home.svg',
                    color: _currentIndex == 0
                        ? Color(0xFF009DFF)
                        : Color(0xFF999999),
                  ),
                ),
                label: 'My World',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: SvgPicture.asset(
                    'assets/images/car.svg',
                    height: 23,
                    color: _currentIndex == 1
                        ? Color(0xFF009DFF)
                        : Color(0xFF999999),
                  ),
                ),
                label: 'Car Fund',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 3),
                  child: SvgPicture.asset(
                    'assets/images/transaction.svg',
                    color: _currentIndex == 2
                        ? Color(0xFF009DFF)
                        : Color(0xFF999999),
                  ),
                ),
                label: 'Transaction',
              ),
            ],
            selectedItemColor: Color(0xFF009DFF),
            unselectedItemColor: Color(0xFF999999),
            backgroundColor: Color(0xFFF3F8FF),
          ),
        ),
      ),
    );
  }
}
