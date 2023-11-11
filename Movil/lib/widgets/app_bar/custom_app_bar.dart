import 'package:financia/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 50.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 50.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgOutline:
        return Container(
          height: 90.v,
          width: 292.h,
          margin: EdgeInsets.only(
            left: 37.h,
            right: 31.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5.h,
            ),
            border: Border.all(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              width: 2.h,
            ),
          ),
        );
      case Style.bgShadow:
        return Container(
          height: 50.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onError,
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.primary,
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgOutline,
  bgShadow,
}
