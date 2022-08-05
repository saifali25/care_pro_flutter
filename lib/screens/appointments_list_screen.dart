import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:care_pro_flutter/constants/colors.dart';
import 'package:care_pro_flutter/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  int _currentIndex = 0;
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        backgroundColor: AppColors.facebookBlue,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        }),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text(''),
              activeColor: AppColors.white),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text(''),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text(''),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text(''),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Appointments Schedule',
          style: TextStyle(
              color: AppColors.welcomeTextColor1,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Jan 05,2021',
              style: TextStyle(color: Colors.grey, fontSize: 14.sp),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.all(16.0),
                    height: 140.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(16.0.r)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  color: Color.fromARGB(180, 239, 239, 239),
                                  spreadRadius: 2)
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 38.0,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(AppImages.profilePic),
                              backgroundColor: Colors.transparent,
                              radius: 36.0.r,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Accepted',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color.fromARGB(
                                          255, 9, 132, 255)),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Container(
                                  height: 16.h,
                                  width: 16.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.r)),
                                      color: const Color(0xff06CC70)),
                                  child: const Icon(
                                    Icons.check_outlined,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'Devin Shelton',
                              style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.black),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'Received at 12:00 AM',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            // method on call
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 98),
                            height: 140.h,
                            width: 39.w,
                            decoration: BoxDecoration(
                              color: const Color(0xff00A1E1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16.r),
                                  bottomRight: Radius.circular(16.r)),
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.white,
                            )),
                          ),
                        ),
                      ],
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
