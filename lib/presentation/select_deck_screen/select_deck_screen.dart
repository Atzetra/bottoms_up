import 'notifier/select_deck_notifier.dart';
import 'package:bottoms_up/core/app_export.dart';
import 'package:bottoms_up/widgets/app_bar/appbar_leading_image.dart';
import 'package:bottoms_up/widgets/app_bar/appbar_title.dart';
import 'package:bottoms_up/widgets/app_bar/custom_app_bar.dart';
import 'package:bottoms_up/widgets/custom_elevated_button.dart';
import 'package:bottoms_up/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class SelectDeckScreen extends ConsumerStatefulWidget {
  const SelectDeckScreen({Key? key}) : super(key: key);

  @override
  SelectDeckScreenState createState() => SelectDeckScreenState();
}

class SelectDeckScreenState extends ConsumerState<SelectDeckScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl_select_deck".tr,
                              style: CustomTextStyles
                                  .headlineMediumLexendGigaSecondaryContainer)),
                      SizedBox(height: 24.v),
                      CustomOutlinedButton(
                          height: 51.v,
                          text: "msg_breaking_the_ice".tr,
                          margin: EdgeInsets.only(right: 13.h),
                          buttonStyle:
                              CustomButtonStyles.outlinePrimaryContainer,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallOnPrimaryContainer),
                      SizedBox(height: 11.v),
                      CustomElevatedButton(
                          text: "msg_raising_the_stakes".tr,
                          margin: EdgeInsets.only(right: 13.h)),
                      SizedBox(height: 12.v),
                      Container(
                          margin: EdgeInsets.only(right: 13.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 8.v),
                          decoration: AppDecoration.fillOnError.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 13.h, bottom: 4.v),
                                    child: Text("lbl_caliente".tr,
                                        style: theme.textTheme.headlineSmall)),
                                Container(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    margin: EdgeInsets.only(top: 3.v),
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.onError,
                                        borderRadius:
                                            BorderRadius.circular(10.h),
                                        border: Border.all(
                                            color: appTheme.black900,
                                            width: 3.h)))
                              ])),
                      SizedBox(height: 43.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 20.v,
                          width: 19.h,
                          margin: EdgeInsets.only(left: 21.h)),
                      SizedBox(height: 35.v),
                      Container(
                          margin: EdgeInsets.only(right: 52.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 11.h, vertical: 1.v),
                          decoration: AppDecoration.outlineSecondaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder30),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowRight,
                                height: 33.adaptSize,
                                width: 33.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 14.v)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 11.h, top: 1.v, right: 9.h),
                                child: Text("lbl_play".tr,
                                    style: CustomTextStyles
                                        .displayMediumSecondaryContainer))
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 30.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowRight,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 21.v),
            onTap: () {
              onTapArrowRight(context);
            }),
        actions: [
          AppbarTitle(
              text: "lbl_bottoms_up".tr,
              margin: EdgeInsets.fromLTRB(20.h, 13.v, 20.h, 12.v))
        ]);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
