part of 'dashboard_bloc.dart';

sealed class DashboardEvent {}

final class DashboardIndexUpdateEvent extends DashboardEvent {
  final int index;

  DashboardIndexUpdateEvent({required this.index});
}

final class DashboardIndexPopupEvent extends DashboardEvent {}
