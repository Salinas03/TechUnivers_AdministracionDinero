// ignore_for_file: must_be_immutable

part of 'pantalla_plan_de_ahorro_modificaci_n_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaPlanDeAhorroModificaciN widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaPlanDeAhorroModificaciNEvent extends Equatable {}

/// Event that is dispatched when the PantallaPlanDeAhorroModificaciN widget is first created.
class PantallaPlanDeAhorroModificaciNInitialEvent
    extends PantallaPlanDeAhorroModificaciNEvent {
  @override
  List<Object?> get props => [];
}
