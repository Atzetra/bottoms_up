import 'notifier/add_names_notifier.dart';
import 'package:bottoms_up/core/app_export.dart';
import 'package:bottoms_up/widgets/app_bar/appbar_leading_image.dart';
import 'package:bottoms_up/widgets/app_bar/appbar_title.dart';
import 'package:bottoms_up/widgets/app_bar/custom_app_bar.dart';
import 'package:bottoms_up/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class AddNamesScreen extends ConsumerStatefulWidget {
  const AddNamesScreen({Key? key}) : super(key: key);

  @override
  AddNamesScreenState createState() => AddNamesScreenState();
}

class AddNamesScreenState extends ConsumerState<AddNamesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 30.h, top: 133.v, right: 30.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 236.v,
                          width: 246.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    width: 156.h,
                                    margin: EdgeInsets.only(left: 26.h),
                                    child: Text("msg_add_a_player".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            theme.textTheme.headlineMedium))),
                            Align(
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 27.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 13.h, vertical: 1.v),
                                          decoration: AppDecoration
                                              .outlineSecondaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder20),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h),
                                                    child: Text(
                                                        "lbl_other_name".tr,
                                                        style: CustomTextStyles
                                                            .headlineMediumSecondaryContainer)),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgClose,
                                                    height: 18.adaptSize,
                                                    width: 18.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 22.h,
                                                        top: 8.v,
                                                        bottom: 6.v))
                                              ])),
                                      SizedBox(height: 11.v),
                                      _buildAddPlayerRow(context,
                                          name: "lbl_name".tr),
                                      SizedBox(height: 5.v),
                                      SizedBox(
                                          height: 122.v,
                                          width: 246.h,
                                          child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: SizedBox(
                                                        height: 63.v,
                                                        width: 182.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: SizedBox(
                                                                      width:
                                                                          156.h,
                                                                      child: Text(
                                                                          "msg_add_a_player"
                                                                              .tr,
                                                                          maxLines:
                                                                              2,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style: theme
                                                                              .textTheme
                                                                              .headlineMedium))),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: 9.v,
                                                                      right:
                                                                          18.h,
                                                                      bottom:
                                                                          9.v),
                                                                  child: _buildAddPlayerRow(
                                                                      context,
                                                                      name: "lbl_name"
                                                                          .tr))
                                                            ]))),
                                                Align(
                                                    alignment: Alignment
                                                        .topLeft,
                                                    child: Container(
                                                        width: 156.h,
                                                        margin: EdgeInsets.only(
                                                            left: 26.h),
                                                        child: Text(
                                                            "msg_add_a_player"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: theme
                                                                .textTheme
                                                                .headlineMedium))),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        margin: EdgeInsets.only(
                                                            top: 9.v,
                                                            bottom: 68.v),
                                                        decoration: AppDecoration
                                                            .outlineOnError
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder20),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 7
                                                                              .v),
                                                                  child: Text(
                                                                      "lbl_longer_name"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .headlineMediumOnError)),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgClose,
                                                                  height: 18
                                                                      .adaptSize,
                                                                  width: 18
                                                                      .adaptSize,
                                                                  margin: EdgeInsets
                                                                      .symmetric(
                                                                          vertical:
                                                                              10.v))
                                                            ])))
                                              ]))
                                    ]))
                          ])),
                      SizedBox(height: 37.v),
                      CustomOutlinedButton(
                          height: 60.v,
                          text: "msg_add_a_player".tr,
                          margin: EdgeInsets.only(left: 1.h, right: 22.h),
                          rightIcon: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(21.h, 6.v, 16.h, 3.v),
                              child: Text("lbl2".tr,
                                  style: TextStyle(
                                      color: Color(0XFF0048FF),
                                      fontSize: 40.fSize,
                                      fontFamily: 'Lexend Giga',
                                      fontWeight: FontWeight.w700))),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 16.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgLock,
                                  height: 20.v,
                                  width: 19.h)),
                          buttonStyle:
                              CustomButtonStyles.outlineOnPrimaryContainer,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallBlack900),
                      SizedBox(height: 15.v),
                      CustomOutlinedButton(
                          height: 73.v,
                          text: "lbl_play".tr,
                          margin: EdgeInsets.only(left: 1.h, right: 55.h),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 11.h),
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowRightOnprimary,
                                  height: 33.adaptSize,
                                  width: 33.adaptSize)),
                          buttonStyle:
                              CustomButtonStyles.outlineSecondaryContainer,
                          buttonTextStyle: theme.textTheme.displayMedium!,
                          onPressed: () {
                            onTapPLAY(context);
                          }),
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

  /// Common widget
  Widget _buildAddPlayerRow(
    BuildContext context, {
    required String name,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: AppDecoration.fillOnError
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(name,
                  style: CustomTextStyles.headlineMediumBlack900
                      .copyWith(color: appTheme.black900))),
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 7.v))
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the selectDeckScreen when the action is triggered.
  onTapPLAY(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectDeckScreen,
    );
  }
}
