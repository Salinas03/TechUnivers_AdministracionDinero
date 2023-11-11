// ignore_for_file: must_be_immutable

part of 'pantalla_principal_bloc.dart';

/// Represents the state of PantallaPrincipal in the application.
class PantallaPrincipalState extends Equatable {
  PantallaPrincipalState({
    this.ahorroOneController,
    this.metaOneController,
    this.pantallaPrincipalModelObj,
  });

  TextEditingController? ahorroOneController;

  TextEditingController? metaOneController;

  PantallaPrincipalModel? pantallaPrincipalModelObj;

  @override
  List<Object?> get props => [
        ahorroOneController,
        metaOneController,
        pantallaPrincipalModelObj,
      ];
  PantallaPrincipalState copyWith({
    TextEditingController? ahorroOneController,
    TextEditingController? metaOneController,
    PantallaPrincipalModel? pantallaPrincipalModelObj,
  }) {
    return PantallaPrincipalState(
      ahorroOneController: ahorroOneController ?? this.ahorroOneController,
      metaOneController: metaOneController ?? this.metaOneController,
      pantallaPrincipalModelObj:
          pantallaPrincipalModelObj ?? this.pantallaPrincipalModelObj,
    );
  }
}
