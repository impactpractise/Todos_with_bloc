/* Handle events in TodoBloc

TodosLoadSuccess - tells the bloc that it needs to load the todos from the TodosRepository.
TodoAdded - tells the bloc that it needs to add an new todo to the list of todos.
TodoUpdated - tells the bloc that it needs to update an existing todo.
TodoDeleted - tells the bloc that it needs to remove an existing todo.
ClearCompleted - tells the bloc that it needs to remove all completed todos.
ToggleAll - tells the bloc that it needs to toggle the completed state of all todos.

 */

import 'package:equatable/equatable.dart';
import 'package:productbook/models/todo.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

class TodosLoadSuccess extends TodosEvent {}

class TodoAdded extends TodosEvent {
  final Todo todo;

  const TodoAdded(this.todo);

  @override
  List<Object> get props => [todo];

  @override
  String toString() => 'TodoAdded { todo: $todo }';
}

class TodoUpdated extends TodosEvent {
  final Todo todo;

  const TodoUpdated(this.todo);

  @override
  List<Object> get props => [todo];

  @override
  String toString() => 'TodoUpdated { todo: $todo }';
}

class TodoDeleted extends TodosEvent {
  final Todo todo;

  const TodoDeleted(this.todo);

  @override
  List<Object> get props => [todo];

  @override
  String toString() => 'TodoDeleted { todo: $todo }';
}

class ClearCompleted extends TodosEvent {}

class ToggleAll extends TodosEvent {}
