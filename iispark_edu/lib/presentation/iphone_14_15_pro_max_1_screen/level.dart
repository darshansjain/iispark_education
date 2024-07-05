import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class Iphone1415ProMax1Screen extends StatelessWidget {
  const Iphone1415ProMax1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeUtils();
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.66, 0.07),
              end: const Alignment(0.31, 0.83),
              colors: [
                theme.colorScheme.onPrimary,
                appTheme.deepPurple700,
                appTheme.deepPurpleA400
              ],
            ),
          ),
          child: SizedBox(
            height: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage7,
                  height: 878.v,
                  width: double.maxFinite,
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    height: 992.v,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 832.v,
                            margin: EdgeInsets.only(top: 20.v),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                _buildImageVectorStack(context),
                                _buildImageViewStack(context),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: _buildImageVectorStack(context),
                                ),
                                CustomElevatedButton(
                                  height: 42.v,
                                  width: 146.h,
                                  text: "Level 01",
                                  alignment: Alignment.topCenter,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 992.v,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Opacity(
                                opacity: 0.12,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage10,
                                  height: 170.v,
                                  width: double.maxFinite,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 56.h,
                                    bottom: 78.v,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse87,
                                height: 210.v,
                                width: 136.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 50.v),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 398.h,
                                  margin: EdgeInsets.only(top: 116.v),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 580.v,
                                        width: 362.h,
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector8,
                                              height: 406.v,
                                              width: 192.h,
                                              radius: BorderRadius.circular(
                                                2.h,
                                              ),
                                              alignment: Alignment.topCenter,
                                              margin:
                                                  EdgeInsets.only(top: 20.v),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector9,
                                              height: 176.v,
                                              width: 206.h,
                                              radius: BorderRadius.circular(
                                                2.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroup48095799,
                                              height: 42.adaptSize,
                                              width: 42.adaptSize,
                                              alignment: Alignment.topRight,
                                              margin:
                                                  EdgeInsets.only(right: 62.h),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroup48095799,
                                              height: 42.adaptSize,
                                              width: 42.adaptSize,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                left: 64.h,
                                                top: 202.v,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroup48095799,
                                              height: 42.adaptSize,
                                              width: 42.adaptSize,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                right: 48.h,
                                                bottom: 156.v,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 48.h,
                                                  top: 2.v,
                                                ),
                                                child: Text(
                                                  "Video",
                                                  style: theme
                                                      .textTheme.titleLarge,
                                                ),
                                              ),
                                            ),
                                            CustomElevatedButton(
                                              width: 170.h,
                                              text: "Practical",
                                              margin:
                                                  EdgeInsets.only(top: 188.v),
                                              buttonStyle:
                                                  CustomButtonStyles.none,
                                              decoration: CustomButtonStyles
                                                  .gradientCyanToIndigoADecoration,
                                              buttonTextStyle:
                                                  theme.textTheme.titleLarge!,
                                              alignment: Alignment.topRight,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                height: 54.v,
                                                width: 170.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 144.v),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    8.h,
                                                  ),
                                                  gradient: LinearGradient(
                                                    begin:
                                                        const Alignment(0.5, 0),
                                                    end:
                                                        const Alignment(0.5, 1),
                                                    colors: [
                                                      appTheme.amber500,
                                                      appTheme.deepOrange400
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector,
                                              height: 102.v,
                                              width: 96.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                top: 86.v,
                                                right: 106.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector,
                                              height: 102.v,
                                              width: 96.h,
                                              alignment: Alignment.centerRight,
                                              margin:
                                                  EdgeInsets.only(right: 6.h),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 54.v,
                                        width: 170.h,
                                        margin: EdgeInsets.only(right: 4.h),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8.h,
                                          ),
                                          gradient: LinearGradient(
                                            begin: const Alignment(0.5, 0),
                                            end: const Alignment(0.5, 1),
                                            colors: [
                                              appTheme.greenA700,
                                              theme.colorScheme.errorContainer
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 80.h,
                                  padding: EdgeInsets.symmetric(vertical: 8.v),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant.imgGroup3,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse88,
                                        height: 210.v,
                                        width: double.maxFinite,
                                      ),
                                      SizedBox(height: 20.v)
                                    ],
                                  ),
                                ),
                              ),
                              // CustomImageView(
                              //   imagePath: ImageConstant.imgGroup3,
                              //   height: 102.v,
                              //   width: 90.h,
                              //   alignment: Alignment.topLeft,
                              //   margin: EdgeInsets.only(
                              //     left: 30.h,
                              //     top: 224.v,
                              //   ),
                              // ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 128.v,
                                width: 120.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(right: 8.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgClipPathGroup,
                                height: 148.v,
                                width: 100.h,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 12.v),
                              ),
                              // CustomImageView(
                              //   imagePath: ImageConstant.imgGroup3,
                              //   height: 142.v,
                              //   width: 112.h,
                              //   alignment: Alignment.topRight,
                              //   margin: EdgeInsets.only(top: 358.v),
                              // ),
                              CustomElevatedButton(
                                width: 266.h,
                                text: "Start",
                                margin: EdgeInsets.only(bottom: 138.v),
                                buttonStyle: CustomButtonStyles.outlinePrimary,
                                buttonTextStyle:
                                    CustomTextStyles.titleLargeIndigoA200,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageViewStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 322.v,
        margin: EdgeInsets.only(top: 12.v),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.12,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage7,
                height: 322.v,
                width: double.maxFinite,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 54.v,
                width: 170.h,
                margin: EdgeInsets.only(
                  left: 30.h,
                  top: 74.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                  gradient: LinearGradient(
                    begin: const Alignment(0.5, 0),
                    end: const Alignment(0.5, 1),
                    colors: [appTheme.redA200, appTheme.pink300],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildImageVectorStack(BuildContext context) {
    return SizedBox(
      height: 322.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.12,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage7,
              height: 322.v,
              width: double.maxFinite,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 102.v,
            width: 96.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 94.v,
              right: 106.h,
            ),
          )
        ],
      ),
    );
  }
}
