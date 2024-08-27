import 'package:flutter/material.dart';
import 'package:mlm/widgets/small_header.dart';

class Network extends StatefulWidget {
  const Network({super.key});

  @override
  State<Network> createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
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
        ],
      ),
    );
  }
}
