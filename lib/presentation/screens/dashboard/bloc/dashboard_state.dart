// ignore_for_file: overridden_fields

part of 'dashboard_bloc.dart';

sealed class DashboardState {
  final int index;

  DashboardState({required this.index});
}

final class DashboardInitialState extends DashboardState {
  @override
  final int index;

  DashboardInitialState({required this.index}) : super(index: index);
}

final class DashboardIndexUpdateState extends DashboardState {
  @override
  final int index;

  DashboardIndexUpdateState({required this.index}) : super(index: index);
}
