import 'package:flutter/material.dart';
import 'package:viavita/SubscriptionDetail/widget.dart';
import 'package:viavita/SubscriptionPlans/Widget.dart';
import 'package:viavita/colors.dart';

class SubscriptionDetailWidget extends StatefulWidget {
  const SubscriptionDetailWidget({super.key});

  @override
  State<SubscriptionDetailWidget> createState() =>
      _SubscriptionDetailWidgetState();
}

class _SubscriptionDetailWidgetState extends State<SubscriptionDetailWidget> {
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;



    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Column(
          children: [
            SizedBox(height: mediaquery.height * 0.02),
            Container(
              height: 60,
              width: double.infinity,
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/back_arrow.png', height: 12, width: 6),
                    SizedBox(width: mediaquery.width * 0.10),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: mediaquery.height * 0.02),
                    PlansWidget(
                      planName: 'Yearly Plan',
                      content:
                          'Unlock exclusive features and enjoy an ad-free experience. ',
                      price: '₹500/Month',
                      cycle: 'Yearly',
                      buttonText: 'pay ₹3,000/Year', showButton: false,
                    ),
                    SizedBox(height: mediaquery.height * 0.05),
                    TextformfieldWidget(title: 'Cardholder Name', hint: 'Name'),
                    SizedBox(height: mediaquery.height * 0.02),
                    TextformfieldWidget(
                      title: 'Card Number',
                      hint: 'xxxx xxxx xxxx',
                    ),
                    SizedBox(height: mediaquery.height * 0.02),
                    Row(
                      children: [
                        Expanded(child: TextformfieldWidget(title: 'CVV', hint: '678')),
                           SizedBox(width: mediaquery.width * 0.05),
                         Expanded(child: TextformfieldWidget(title: 'Expiry Date', hint: '12/12/2027')),
                      ],
                    ),

 SizedBox(height: mediaquery.height * 0.05),

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
                  'Pay ₹3,000/-',
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
            ),
          ],
        ),
      ),
    );
  }
}
