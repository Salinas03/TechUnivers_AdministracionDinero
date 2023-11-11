import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:financia/presentation/pantalla_splash_screen/models/pantalla_splash_model.dart';
part 'pantalla_splash_event.dart';
part 'pantalla_splash_state.dart';

/// A bloc that manages the state of a PantallaSplash according to the event that is dispatched to it.
class PantallaSplashBloc
    extends Bloc<PantallaSplashEvent, PantallaSplashState> {
  PantallaSplashBloc(PantallaSplashState initialState) : super(initialState) {
    on<PantallaSplashInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaSplashInitialEvent event,
    Emitter<PantallaSplashState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.pantallaInicioDeSesiNScreen,
      );
    });
  }
}
