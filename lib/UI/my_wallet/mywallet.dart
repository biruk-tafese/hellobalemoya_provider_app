import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider_app_orientation/UI/my_wallet/widgets/mywalletwidget.dart';
import 'package:provider_app_orientation/common/custom_icon.dart';
import 'package:provider_app_orientation/common/exports.dart';
import 'package:provider_app_orientation/common/height_spacer.dart';

class MyWalletPage extends StatefulWidget {
  const MyWalletPage({super.key});

  @override
  State<MyWalletPage> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWalletPage> {
  @override
  Widget build(BuildContext context) {
    double? toolbarheight;
    double? headersize;
    double? topheight;
    double sWidth = MediaQuery.of(context).size.width;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.shortestSide <= 500;
    Orientation orientaion = MediaQuery.of(context).orientation;
    if (isMobile(context)) {
      if (orientaion == Orientation.portrait) {
        toolbarheight = 85.h;
        topheight = 80.h;
        headersize = 18;
      } else {
        toolbarheight = 100.h;
        topheight = 185.h;
        headersize = 12;
      }
    } else {
      if (orientaion == Orientation.portrait) {
        headersize = 18;
        topheight = 90.h;
        toolbarheight = 58.h;
      } else {
        headersize = 13;
        topheight = 170.h;
        toolbarheight = 58.h;
      }
    }
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: toolbarheight,
        backgroundColor: Color(kBlue.value),
        automaticallyImplyLeading: false,
        title: Center(
          child: ReusableText(
            text: "mywallet".tr,
            style: appstyle(headersize, Color(kLight.value), FontWeight.normal),
          ),
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientaion == Orientation.portrait
              ? Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Color(kBlue.value),
                          width: double.infinity,
                          height: topheight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ReusableText(
                                  text: "walletbalance".tr,
                                  style: appstyle(headersize! + 3,
                                      Color(kLight.value), FontWeight.w500)),
                              ReusableText(
                                  text: "totaldeposit".tr,
                                  style: appstyle(headersize - 5,
                                      Color(kLight.value), FontWeight.w500)),
                              const HeightSpacer(size: 10)
                            ],
                          ),
                        ),
                        const HeightSpacer(size: 10),
                        Container(
                          decoration: BoxDecoration(
                              border: BorderDirectional(
                                  bottom: BorderSide(
                                      color: Color(kLightGrey.value)))),
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "paymentmethod".tr,
                                style: appstyle(headersize - 1,
                                    Color(kDark.value), FontWeight.w400),
                              ),
                              CustomIcon(
                                  width: 0.04,
                                  color: Color(kDarkGrey.value),
                                  icon: Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                        HeightSpacer(size: 13.h),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          width: double.infinity,
                          height: topheight! * 0.5,
                          child: Text(
                            textAlign: TextAlign.start,
                            "paymenthistory".tr,
                            style: appstyle(
                                headersize, Colors.black, FontWeight.normal),
                          ),
                        ),
                        HeightSpacer(size: 5.h),
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "232ETB",
                                name: "yohanes",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "232ETB",
                                name: "yohanes",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "495ETB",
                                name: "Kedir",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "495ETB",
                                name: "Kedir",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "495ETB",
                                name: "Kedir",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "495ETB",
                                name: "Kedir",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "495ETB",
                                name: "Kedir",
                                Tno: "#324343",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            color: Color(kBlue.value),
                            width: double.infinity,
                            height: topheight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ReusableText(
                                    text: "3000ETB",
                                    style: appstyle(headersize! + 3,
                                        Color(kLight.value), FontWeight.w500)),
                                ReusableText(
                                    text: "TOTAL DEPOSIT",
                                    style: appstyle(headersize - 3,
                                        Color(kLight.value), FontWeight.w500)),
                                const HeightSpacer(size: 10)
                              ],
                            ),
                          ),
                          const HeightSpacer(size: 10),
                          Container(
                            decoration: BoxDecoration(
                                border: BorderDirectional(
                                    bottom: BorderSide(
                                        color: Color(kLightGrey.value)))),
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Payment Method",
                                  style: appstyle(headersize - 2,
                                      Color(kDark.value), FontWeight.w400),
                                ),
                                CustomIcon(
                                    width: 0.02,
                                    color: Color(kDarkGrey.value),
                                    icon: Icons.cases_rounded)
                              ],
                            ),
                          ),
                          HeightSpacer(size: 5.h),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "232ETB",
                                name: "yohanes",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "232ETB",
                                name: "yohanes",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "495ETB",
                                name: "Kedir",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "495ETB",
                                name: "Kedir",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "495ETB",
                                name: "Kedir",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "495ETB",
                                name: "Kedir",
                                Tno: "#324343",
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(13),
                              child: const MyWalletWidget(
                                amount: "495ETB",
                                name: "Kedir",
                                Tno: "#324343",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
