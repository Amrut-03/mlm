import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageDropdown extends StatefulWidget {
  const PackageDropdown({Key? key}) : super(key: key);

  @override
  State<PackageDropdown> createState() => _PackageDropdownState();
}

class _PackageDropdownState extends State<PackageDropdown> {
  String dropdownValue = 'Basic';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 310,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFA8A8A8),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButtonFormField<String>(
          borderRadius: BorderRadius.circular(10),
          dropdownColor: Colors.white,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
          ),
          value: dropdownValue,
          icon: SvgPicture.asset('assets/images/dropdown.svg'),
          iconSize: 30,
          elevation: 16,
          style: GoogleFonts.inter(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
          items: <String>['Basic', 'Standard', 'Premium']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        ),
      ),
    );
  }
}
