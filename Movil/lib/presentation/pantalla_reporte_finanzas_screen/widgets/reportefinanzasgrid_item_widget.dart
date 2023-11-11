import '../models/reportefinanzasgrid_item_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReportefinanzasgridItemWidget extends StatelessWidget {
  ReportefinanzasgridItemWidget(
    this.reportefinanzasgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReportefinanzasgridItemModel reportefinanzasgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 50.v,
        width: 130.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 7.v),
                child: Text(
                  reportefinanzasgridItemModelObj.price!,
                  style: CustomTextStyles.bodySmallPrimaryContainer,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3.v),
                decoration: AppDecoration.outlineOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      reportefinanzasgridItemModelObj.totalDeIngresos!,
                      style: CustomTextStyles.bodySmallPrimaryContainer,
                    ),
                    SizedBox(height: 22.v),
                    SizedBox(
                      width: 127.h,
                      child: Divider(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                      ),
                    ),
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
