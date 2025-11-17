import 'package:flutter/material.dart';
import 'package:viavita/CommonWidgets/colors.dart';
import 'package:viavita/CommonWidgets/filledbuttonwidget.dart';

class TaskContainerWidgets extends StatelessWidget {
  final String category;
  final String title;
  final String location;
  final String time;

  const TaskContainerWidgets(
    {
    super.key,
    required this.category,
    required this.title,
    required this.location,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    return Container(
      width: 390,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.containerbg3,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.captionColor,
              ),
            ),

            // SizedBox(height: mediaquery.height * 0.005),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),

            // SizedBox(height: mediaquery.height * 0.005),
            Text(
              location,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.captionColor,
              ),
            ),

            // SizedBox(height: mediaquery.height * 0.005),
            Text(
              time,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.captionColor,
              ),
            ),
            FilledButtonWidget(
              buttontext: 'View Details',
              buttonwidth: 350,
              buttonheight: 45,
            ),
          ],
        ),
      ),
    );
  }
}
