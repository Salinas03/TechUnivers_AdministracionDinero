// ignore_for_file: must_be_immutable

part of 'pantalla_acerca_de_la_aplicaci_n_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaAcercaDeLaAplicaciN widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaAcercaDeLaAplicaciNEvent extends Equatable {}

/// Event that is dispatched when the PantallaAcercaDeLaAplicaciN widget is first created.
class PantallaAcercaDeLaAplicaciNInitialEvent
    extends PantallaAcercaDeLaAplicaciNEvent {
  @override
  List<Object?> get props => [];
}
