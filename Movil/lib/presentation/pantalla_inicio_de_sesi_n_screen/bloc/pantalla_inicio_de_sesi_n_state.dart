// ignore_for_file: must_be_immutable

part of 'pantalla_inicio_de_sesi_n_bloc.dart';

/// Represents the state of PantallaInicioDeSesiN in the application.
class PantallaInicioDeSesiNState extends Equatable {
  PantallaInicioDeSesiNState({
    this.userNameController,
    this.passwordController,
    this.pantallaInicioDeSesiNModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  PantallaInicioDeSesiNModel? pantallaInicioDeSesiNModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        pantallaInicioDeSesiNModelObj,
      ];
  PantallaInicioDeSesiNState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    PantallaInicioDeSesiNModel? pantallaInicioDeSesiNModelObj,
  }) {
    return PantallaInicioDeSesiNState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      pantallaInicioDeSesiNModelObj:
          pantallaInicioDeSesiNModelObj ?? this.pantallaInicioDeSesiNModelObj,
    );
  }
}
