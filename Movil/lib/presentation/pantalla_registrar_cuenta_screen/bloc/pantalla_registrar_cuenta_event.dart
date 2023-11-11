// ignore_for_file: must_be_immutable

part of 'pantalla_registrar_cuenta_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaRegistrarCuenta widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaRegistrarCuentaEvent extends Equatable {}

/// Event that is dispatched when the PantallaRegistrarCuenta widget is first created.
class PantallaRegistrarCuentaInitialEvent extends PantallaRegistrarCuentaEvent {
  @override
  List<Object?> get props => [];
}
