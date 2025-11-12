import 'package:flutter/material.dart';
import 'package:viavita/SubscriptionPlans/Widget.dart';
import 'package:viavita/colors.dart';

class SubscriptionPlanWidget extends StatelessWidget {
  const SubscriptionPlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Column(
          children: [
            SizedBox(height: mediaquery.height*0.02),
            Container(
              height: 60,
              width: double.infinity,
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/back_arrow.png', height: 12, width: 6),
                    SizedBox(width: mediaquery.width*0.10),
                    Text(
                      'Subscription',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PlansWidget(
                      planName: 'Free Plan',
                      content:
                          'Unlock exclusive features and enjoy an ad-free experience. ',
                      price: '0',
                      cycle: '3+ Months',
                      buttonText: 'Free',
                    ),
                    SizedBox(height: mediaquery.height*0.01),
                    PlansWidget(
                      planName: '3+ Months Plan',
                      content:
                          'Unlock exclusive features and enjoy an ad-free experience. ',
                      price: '₹600',
                      cycle: 'Monthly',
                      buttonText: 'pay ₹600/Month',
                    ),
                    SizedBox(height: mediaquery.height*0.01),

                    PlansWidget(
                      planName: 'Yearly Plan',
                      content:
                          'Unlock exclusive features and enjoy an ad-free experience. ',
                      price: '₹500/Month',
                      cycle: 'Yearly',
                      buttonText: 'pay ₹3,000/Year',
                    ),
                    SizedBox(height: mediaquery.height*0.02),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
