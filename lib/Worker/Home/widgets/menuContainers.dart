import 'package:flutter/material.dart';
import 'package:viavita/CommonWidgets/colors.dart';

class MenuContainerWidgets extends StatelessWidget {
  final String icondata;
  final String title;

  const MenuContainerWidgets({
    super.key,
    required this.icondata,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;

    return Container(
      width: 390,
      height: 78,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.containerbg3,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.iconbg,
                  child: Image.asset(icondata, scale: 5),
                ),
                SizedBox(width: mediaquery.width * 0.05),
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            Image.asset('assets/right_arrow.png', scale: 4),
          ],
        ),
      ),
    );
  }
}
