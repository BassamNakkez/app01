import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget
{
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Column(
              children: const [
                Text(
                  'Home Page',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
          ),
        ],
      ),
    );
  }
}