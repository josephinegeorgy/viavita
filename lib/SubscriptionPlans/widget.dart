import 'package:flutter/material.dart';
import 'package:viavita/colors.dart';

class PlansWidget extends StatelessWidget {
  final String planName;
  final String content;
  final String price;
  final String cycle;
  final String buttonText;

  const PlansWidget({
    super.key,
    required this.planName,
    required this.content,
    required this.price,
    required this.cycle,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
 final mediaquery = MediaQuery.of(context).size;
    final datatextstyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.captionColor,
    );
    final subtitletextstyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.textColor,
    );
    
    return Container(
      height: 226,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.cardBorder, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                planName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor,
                ),
              ),
            ),
            SizedBox(height: mediaquery.height*0.01),
            Text(content, style: datatextstyle),
            SizedBox(height: mediaquery.height*0.005),
            Row(
              children: [
                Text('Price:', style: subtitletextstyle),
                SizedBox(width: mediaquery.width*0.005),
                Text('$price', style: datatextstyle),
              ],
            ),
            SizedBox(height: 5),

            Row(
              children: [
                Text('Billing:', style: subtitletextstyle),
                SizedBox(width: mediaquery.width*0.005),

                Text('$cycle', style: datatextstyle),
              ],
            ),
            SizedBox(height: mediaquery.height*0.01),

            Container(
              width: 350,
              height: 45,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.buttonShade1, AppColors.buttonShade2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
