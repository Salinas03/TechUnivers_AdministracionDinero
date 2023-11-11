// ignore_for_file: must_be_immutable

part of 'pantalla_planes_de_ahorro_totales_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaPlanesDeAhorroTotales widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaPlanesDeAhorroTotalesEvent extends Equatable {}

/// Event that is dispatched when the PantallaPlanesDeAhorroTotales widget is first created.
class PantallaPlanesDeAhorroTotalesInitialEvent
    extends PantallaPlanesDeAhorroTotalesEvent {
  @override
  List<Object?> get props => [];
}
