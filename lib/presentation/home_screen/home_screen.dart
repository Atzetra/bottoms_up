import 'notifier/home_notifier.dart';
import 'package:bottoms_up/core/app_export.dart';
import 'package:bottoms_up/widgets/app_bar/appbar_subtitle.dart';
import 'package:bottoms_up/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bottoms_up/widgets/app_bar/custom_app_bar.dart';
import 'package:bottoms_up/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 21.h, top: 70.v, right: 21.h),
                child: Column(children: [
                  _buildStack(context),
                  SizedBox(height: 12.v),
                  _buildStack1(context),
                  SizedBox(height: 13.v),
                  CustomOutlinedButton(
                      text: "lbl_suggestions".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 7.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgIcbaselinemail,
                              height: 27.adaptSize,
                              width: 27.adaptSize))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitle(
            text: "lbl_bottoms_up".tr, margin: EdgeInsets.only(left: 17.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgArrowRight,
              margin: EdgeInsets.only(left: 8.h, top: 18.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.fromLTRB(124.h, 14.v, 32.h, 2.v))
        ]);
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
        height: 275.v,
        width: 317.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                  onTap: () {
                    onTapTxtText(context);
                  },
                  child: Container(
                      width: 56.h,
                      margin: EdgeInsets.only(left: 36.h),
                      child: Text("lbl".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.nATSPrimaryContainer)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 81.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          GestureDetector(
                              onTap: () {
                                onTapView(context);
                              },
                              child: Container(
                                  height: 121.v,
                                  width: 129.h,
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.onPrimary,
                                      borderRadius: BorderRadius.circular(20.h),
                                      border: Border.all(
                                          color: theme
                                              .colorScheme.primaryContainer,
                                          width: 5.h)))),
                          SizedBox(height: 12.v),
                          SizedBox(
                              height: 61.v,
                              width: 129.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 61.v,
                                        width: 129.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.h),
                                            border: Border.all(
                                                color: theme.colorScheme
                                                    .onPrimaryContainer,
                                                width: 5.h)))),
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgSearchOnprimarycontainer,
                                    height: 33.v,
                                    width: 35.h,
                                    alignment: Alignment.center)
                              ]))
                        ]),
                        GestureDetector(
                            onTap: () {
                              onTapFortyFour(context);
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 21.h, vertical: 13.v),
                                decoration: AppDecoration.fillSecondaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: SizedBox(
                                    width: 133.h,
                                    child: Text("lbl_play".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .lexendGigaOnPrimary))))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildStack1(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: theme.colorScheme.onError,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Container(
            height: 134.v,
            width: 317.h,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
            decoration: AppDecoration.fillOnError
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Stack(alignment: Alignment.bottomRight, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      width: 270.h,
                      child: Text("lbl_continue_game".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displaySmall))),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnprimary,
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 99.h, bottom: 12.v))
            ])));
  }

  /// Navigates to the oneScreen when the action is triggered.
  onTapTxtText(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.oneScreen,
    );
  }

  /// Navigates to the oneScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.oneScreen,
    );
  }

  /// Navigates to the addNamesScreen when the action is triggered.
  onTapFortyFour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addNamesScreen,
    );
  }
}
