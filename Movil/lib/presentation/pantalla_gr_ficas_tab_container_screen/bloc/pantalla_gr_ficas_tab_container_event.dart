// ignore_for_file: must_be_immutable

part of 'pantalla_gr_ficas_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaGrFicasTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaGrFicasTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PantallaGrFicasTabContainer widget is first created.
class PantallaGrFicasTabContainerInitialEvent
    extends PantallaGrFicasTabContainerEvent {
  @override
  List<Object?> get props => [];
}
