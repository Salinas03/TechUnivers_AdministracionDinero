// ignore_for_file: must_be_immutable

part of 'pantalla_aviso_de_privacidad_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PantallaAvisoDePrivacidad widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PantallaAvisoDePrivacidadEvent extends Equatable {}

/// Event that is dispatched when the PantallaAvisoDePrivacidad widget is first created.
class PantallaAvisoDePrivacidadInitialEvent
    extends PantallaAvisoDePrivacidadEvent {
  @override
  List<Object?> get props => [];
}
