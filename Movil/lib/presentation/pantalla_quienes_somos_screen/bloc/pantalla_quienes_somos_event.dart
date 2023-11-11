// ignore_for_file: must_be_immutable

part of 'pantalla_quienes_somos_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaQuienesSomos widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaQuienesSomosEvent extends Equatable {}

/// Event that is dispatched when the PantallaQuienesSomos widget is first created.
class PantallaQuienesSomosInitialEvent extends PantallaQuienesSomosEvent {
  @override
  List<Object?> get props => [];
}
