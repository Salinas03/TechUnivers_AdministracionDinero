// ignore_for_file: must_be_immutable

part of 'pantalla_splash_bloc.dart';

/// Represents the state of PantallaSplash in the application.
class PantallaSplashState extends Equatable {
  PantallaSplashState({this.pantallaSplashModelObj});

  PantallaSplashModel? pantallaSplashModelObj;

  @override
  List<Object?> get props => [
        pantallaSplashModelObj,
      ];
  PantallaSplashState copyWith({PantallaSplashModel? pantallaSplashModelObj}) {
    return PantallaSplashState(
      pantallaSplashModelObj:
          pantallaSplashModelObj ?? this.pantallaSplashModelObj,
    );
  }
}
