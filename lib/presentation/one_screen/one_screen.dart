import 'notifier/one_notifier.dart';
import 'package:bottoms_up/core/app_export.dart';
import 'package:bottoms_up/widgets/app_bar/appbar_subtitle.dart';
import 'package:bottoms_up/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bottoms_up/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OneScreen extends ConsumerStatefulWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  OneScreenState createState() => OneScreenState();
}

class OneScreenState extends ConsumerState<OneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 748.v,
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 20.h, top: 101.v, right: 20.h),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: 34.h,
                          margin: EdgeInsets.only(left: 14.h),
                          child: Text("lbl".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.nATSOnPrimary))),
                  _buildFiftyNine(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitle(
            text: "lbl_bottoms_up".tr,
            margin: EdgeInsets.only(left: 17.h),
            onTap: () {
              onTapBottomsUp(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgArrowRight,
              margin: EdgeInsets.fromLTRB(8.h, 18.v, 15.h, 4.v),
              onTap: () {
                onTapArrowRight(context);
              }),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.only(left: 124.h, top: 14.v, right: 34.h))
        ]);
  }

  /// Section Widget
  Widget _buildThirtyNine(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 30.v),
            decoration: AppDecoration.fillPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Container(
                width: 236.h,
                margin: EdgeInsets.only(left: 49.h),
                child: Text("msg_i_am_not_responsible".tr,
                    maxLines: 13,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleLargeKarlaOnPrimaryContainer
                        .copyWith(height: 1.10)))));
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 355.v,
            width: 317.h,
            margin: EdgeInsets.only(top: 46.v),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 22.v,
                  width: 23.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 49.h, top: 149.v)),
              _buildThirtyNine(context)
            ])));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBottomsUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
