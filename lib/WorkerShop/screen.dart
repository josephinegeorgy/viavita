import 'package:flutter/material.dart';
import 'package:viavita/WorkerShop/widget.dart';
import 'package:viavita/appbarwidget.dart';
import 'package:viavita/colors.dart';

class WorkerShopWidget extends StatefulWidget {
  const WorkerShopWidget({super.key});

  @override
  State<WorkerShopWidget> createState() => _WorkerShopWidgetState();
}

class _WorkerShopWidgetState extends State<WorkerShopWidget> {
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
            AppBarWidget(title: 'Shop'),
            SizedBox(height: mediaquery.height * 0.05),
            Container(
              width: 390,
              height: 90,
              decoration: BoxDecoration(shape: BoxShape.rectangle),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      'https://i.pravatar.cc/300',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: mediaquery.width * 0.05),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John’s Grocery',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: mediaquery.height * 0.005),

                      Text(
                        'Owner: John Doe',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaquery.height * 0.005),
            WorkerInfoWidget(
              icondata: 'assets/phone_icon.png',
              title: 'Phone Number',
              data: '+91 1234567890',
            ),
            SizedBox(height: mediaquery.height * 0.005),
            WorkerInfoWidget(
              icondata: 'assets/mail_icon.png',
              title: 'Email ID',
              data: 'abisha12@gmail.com',
            ),
            SizedBox(height: mediaquery.height * 0.005),
            WorkerInfoWidget(
              icondata: 'assets/loc_icon.png',
              title: 'Address',
              data: '123-city, Trivandrum',
            ),
            SizedBox(height: mediaquery.height * 0.005),
            Row(
              children: [
                SizedBox(width:65, height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/star_icon.png',
                          width: 20,
                          height: 19,
                        ),
                        SizedBox(width: mediaquery.width * 0.005),
                        Image.asset(
                          'assets/star_icon.png',
                          width: 20,
                          height: 19,
                        ),
                        SizedBox(width: mediaquery.width * 0.005),
                        Image.asset(
                          'assets/star_icon.png',
                          width: 20,
                          height: 19,
                        ),
                        SizedBox(width: mediaquery.width * 0.005),
                        Image.asset(
                          'assets/star_icon.png',
                          width: 20,
                          height: 19,
                        ),
                        SizedBox(width: mediaquery.width * 0.005),
                        Image.asset(
                          'assets/star_icon.png',
                          width: 20,
                          height: 19,
                        ),
                      ],
                    ),
                     SizedBox(height: mediaquery.height * 0.008),
                    Text(
                      '5/5',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
