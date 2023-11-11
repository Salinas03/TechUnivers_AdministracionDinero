// ignore_for_file: must_be_immutable

part of 'pantalla_plan_de_ahorro_crear_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaPlanDeAhorroCrear widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaPlanDeAhorroCrearEvent extends Equatable {}

/// Event that is dispatched when the PantallaPlanDeAhorroCrear widget is first created.
class PantallaPlanDeAhorroCrearInitialEvent
    extends PantallaPlanDeAhorroCrearEvent {
  @override
  List<Object?> get props => [];
}
