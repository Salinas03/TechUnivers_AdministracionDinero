import '../models/planscreen_item_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlanscreenItemWidget extends StatelessWidget {
  PlanscreenItemWidget(
    this.planscreenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlanscreenItemModel planscreenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.v,
      width: 300.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                right: 9.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    planscreenItemModelObj.cuLEsTuMeta!,
                    style: CustomTextStyles.bodySmallPrimaryContainer,
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: 196.h,
                    child: Text(
                      planscreenItemModelObj.comprarmeUnaNueva!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.outlineOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90.adaptSize,
                    width: 90.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL5,
                    ),
                    child: CustomImageView(
                      imagePath: planscreenItemModelObj?.culestumeta,
                      height: 70.v,
                      width: 50.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25.v,
                      bottom: 62.v,
                    ),
                    child: SizedBox(
                      width: 208.h,
                      child: Divider(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
