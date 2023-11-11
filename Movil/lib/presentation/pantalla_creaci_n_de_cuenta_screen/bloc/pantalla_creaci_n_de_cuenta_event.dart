// ignore_for_file: must_be_immutable

part of 'pantalla_creaci_n_de_cuenta_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaCreaciNDeCuenta widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaCreaciNDeCuentaEvent extends Equatable {}

/// Event that is dispatched when the PantallaCreaciNDeCuenta widget is first created.
class PantallaCreaciNDeCuentaInitialEvent extends PantallaCreaciNDeCuentaEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends PantallaCreaciNDeCuentaEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
