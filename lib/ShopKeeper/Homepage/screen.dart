import 'package:flutter/material.dart';
import 'package:viavita/CommonWidgets/colors.dart';
import 'package:viavita/CommonWidgets/filledbuttonwidget.dart';
import 'package:viavita/ShopKeeper/Homepage/widgets.dart';
import 'package:viavita/Worker/Home/widgets/homeAppBar.dart';
import 'package:viavita/Worker/Home/widgets/menuContainers.dart';

class SKHomePageWidget extends StatelessWidget {
  const SKHomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: AppColors.white,

      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 50.0),
        child: Column(
          children: [
            HomeAppBarWidget(
              name: 'Ashmi A B',
              imgUrl: 'https://i.pravatar.cc/300',
            ),

             SizedBox(height: mediaquery.height * 0.03),
                    SKHomeMenuWidgets(
                      icondata: 'assets/newreq_icon.png',
                      title: 'New Requirements', count: '12',
                    ),
                    SizedBox(height: mediaquery.height * 0.008),
                    SKHomeMenuWidgets(
                      icondata: 'assets/acceptedreq_icon.png',
                      title: 'Accepted Requirements', count: '35',
                    ),
                    SizedBox(height: mediaquery.height * 0.008),
                    SKHomeMenuWidgets(
                      icondata: 'assets/pendingreq_icon.png',
                      title: 'Pending Requirements', count: '18',
                    ),

                    SizedBox(height: mediaquery.height * 0.04),

                     FilledButtonWidget(buttontext: 'View All Requirements', buttonwidth: 390, buttonheight: 55),
          ],
        ),
      ),
    );
  }
}
