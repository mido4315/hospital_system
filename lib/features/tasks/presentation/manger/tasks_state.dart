part of 'tasks_cubit.dart';

@immutable
abstract class TasksState {}

class TasksInitial extends TasksState {}
class TasksFailure extends TasksState {}
class TasksSuccess extends TasksState {}
class TasksLoading extends TasksState {}

