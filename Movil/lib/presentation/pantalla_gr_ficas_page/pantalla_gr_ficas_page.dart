import 'bloc/pantalla_gr_ficas_bloc.dart';
import 'models/pantalla_gr_ficas_model.dart';
import 'package:financia/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PantallaGrFicasPage extends StatefulWidget {
  const PantallaGrFicasPage({Key? key})
      : super(
          key: key,
        );

  @override
  PantallaGrFicasPageState createState() => PantallaGrFicasPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaGrFicasBloc>(
      create: (context) => PantallaGrFicasBloc(PantallaGrFicasState(
        pantallaGrFicasModelObj: PantallaGrFicasModel(),
      ))
        ..add(PantallaGrFicasInitialEvent()),
      child: PantallaGrFicasPage(),
    );
  }
}

class PantallaGrFicasPageState extends State<PantallaGrFicasPage>
    with AutomaticKeepAliveClientMixin<PantallaGrFicasPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PantallaGrFicasBloc, PantallaGrFicasState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnError,
              child: Column(
                children: [
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 90.h,
                        right: 102.h,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              right: 1.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "lbl_00_00".tr,
                                      style: CustomTextStyles
                                          .bodySmallPrimaryContainer,
                                    ),
                                    SizedBox(height: 4.v),
                                    Container(
                                      height: 170.v,
                                      width: 30.h,
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(0.4),
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(5.h),
                                        ),
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
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 30.v),
                                  child: Column(
                                    children: [
                                      Text(
                                        "lbl_00_00".tr,
                                        style: CustomTextStyles
                                            .bodySmallPrimaryContainer,
                                      ),
                                      SizedBox(height: 4.v),
                                      Container(
                                        height: 140.v,
                                        width: 30.h,
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.onPrimary
                                              .withOpacity(0.4),
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(5.h),
                                          ),
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
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  "lbl_ingresos".tr,
                                  style: CustomTextStyles
                                      .bodySmallPrimaryContainer,
                                ),
                              ),
                              Text(
                                "lbl_gastos".tr,
                                style:
                                    CustomTextStyles.bodySmallPrimaryContainer,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
