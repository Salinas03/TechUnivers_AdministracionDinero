// ignore_for_file: must_be_immutable

part of 'pantalla_terminos_y_condiciones_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaTerminosYCondiciones widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaTerminosYCondicionesEvent extends Equatable {}

/// Event that is dispatched when the PantallaTerminosYCondiciones widget is first created.
class PantallaTerminosYCondicionesInitialEvent
    extends PantallaTerminosYCondicionesEvent {
  @override
  List<Object?> get props => [];
}
