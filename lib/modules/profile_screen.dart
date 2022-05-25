import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(
      'Profile Page',
      style: TextStyle(
        fontSize: 50,
        color: Colors.white,
      ),
    ),);
  }
}


