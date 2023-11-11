// ignore_for_file: must_be_immutable

part of 'pantalla_creaci_n_de_cuenta_bloc.dart';

/// Represents the state of PantallaCreaciNDeCuenta in the application.
class PantallaCreaciNDeCuentaState extends Equatable {
  PantallaCreaciNDeCuentaState({
    this.userInfoController,
    this.userLastNameController,
    this.userAgeController,
    this.userEmailController,
    this.userPhoneController,
    this.userPasswordController,
    this.acceptTermsCheckbox = false,
    this.pantallaCreaciNDeCuentaModelObj,
  });

  TextEditingController? userInfoController;

  TextEditingController? userLastNameController;

  TextEditingController? userAgeController;

  TextEditingController? userEmailController;

  TextEditingController? userPhoneController;

  TextEditingController? userPasswordController;

  PantallaCreaciNDeCuentaModel? pantallaCreaciNDeCuentaModelObj;

  bool acceptTermsCheckbox;

  @override
  List<Object?> get props => [
        userInfoController,
        userLastNameController,
        userAgeController,
        userEmailController,
        userPhoneController,
        userPasswordController,
        acceptTermsCheckbox,
        pantallaCreaciNDeCuentaModelObj,
      ];
  PantallaCreaciNDeCuentaState copyWith({
    TextEditingController? userInfoController,
    TextEditingController? userLastNameController,
    TextEditingController? userAgeController,
    TextEditingController? userEmailController,
    TextEditingController? userPhoneController,
    TextEditingController? userPasswordController,
    bool? acceptTermsCheckbox,
    PantallaCreaciNDeCuentaModel? pantallaCreaciNDeCuentaModelObj,
  }) {
    return PantallaCreaciNDeCuentaState(
      userInfoController: userInfoController ?? this.userInfoController,
      userLastNameController:
          userLastNameController ?? this.userLastNameController,
      userAgeController: userAgeController ?? this.userAgeController,
      userEmailController: userEmailController ?? this.userEmailController,
      userPhoneController: userPhoneController ?? this.userPhoneController,
      userPasswordController:
          userPasswordController ?? this.userPasswordController,
      acceptTermsCheckbox: acceptTermsCheckbox ?? this.acceptTermsCheckbox,
      pantallaCreaciNDeCuentaModelObj: pantallaCreaciNDeCuentaModelObj ??
          this.pantallaCreaciNDeCuentaModelObj,
    );
  }
}
