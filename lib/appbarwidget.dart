import 'package:flutter/material.dart';
import 'package:viavita/colors.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    return Container(
      height: 60,
      width: double.infinity,
      child: Center(
        child: Row(
          children: [
            Image.asset('assets/back_arrow.png', height: 12, width: 6),
            SizedBox(width: mediaquery.width * 0.10),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
