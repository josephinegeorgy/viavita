import 'package:flutter/material.dart';
import 'package:viavita/CommonWidgets/colors.dart';
import 'package:viavita/Worker/Home/widgets/containerblocks.dart';
import 'package:viavita/Worker/Home/widgets/homeAppBar.dart';
import 'package:viavita/Worker/Home/widgets/menuContainers.dart';
import 'package:viavita/Worker/Home/widgets/searchbar.dart';
import 'package:viavita/Worker/Home/widgets/taskcontainers.dart';

class WorkerHomeWidget extends StatelessWidget {
  const WorkerHomeWidget({super.key});

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

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: mediaquery.height * 0.03),

                    SearchBarWidget(),
                    SizedBox(height: mediaquery.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CountContainerWidgets(
                          bgColor: AppColors.containerbg1,
                          text: 'New Task',
                          count: '14',
                        ),
                        CountContainerWidgets(
                          bgColor: AppColors.white,
                          text: 'Accepted',
                          count: '3',
                        ),
                        CountContainerWidgets(
                          bgColor: AppColors.containerbg2,
                          text: 'Offers',
                          count: '11',
                        ),
                      ],
                    ),
                    SizedBox(height: mediaquery.height * 0.03),
                    Column(
                      children: [
                        MenuContainerWidgets(
                          icondata: 'assets/taskicon.png',
                          title: 'View all Tasks',
                        ),
                        SizedBox(height: mediaquery.height * 0.008),
                        MenuContainerWidgets(
                          icondata: 'assets/manageicon.png',
                          title: 'Manage Subscription',
                        ),
                        SizedBox(height: mediaquery.height * 0.008),
                        MenuContainerWidgets(
                          icondata: 'assets/shopicon.png',
                          title: 'Visit Shop',
                        ),
                      ],
                    ),

                    SizedBox(height: mediaquery.height * 0.04),
                    Text(
                      'New Available Tasks',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor,
                      ),
                    ),
                    SizedBox(height: mediaquery.height * 0.02),
                    TaskContainerWidgets(
                      category: 'Gardening',
                      title: 'Lawn Mowing and Garden Weeding',
                      location: '₹500 . 123 Street, TVM',
                      time: 'Est. 2 hours',
                    ),
                    SizedBox(height: mediaquery.height * 0.02),
                    TaskContainerWidgets(
                      category: 'Plumbing',
                      title: 'Fix Leaky Kitchen Faucet',
                      location: '₹500 . 123 Street, TVM',
                      time: 'Est. 2 hours',
                    ),

                    SizedBox(height: mediaquery.height * 0.02),
                    TaskContainerWidgets(
                      category: 'Gardening',
                      title: 'Lawn Mowing and Garden Weeding',
                      location: '₹500 . 123 Street, TVM',
                      time: 'Est. 2 hours',
                    ),

                    SizedBox(height: mediaquery.height * 0.02),
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
