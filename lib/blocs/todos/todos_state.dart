// TodosState the presentation layer will receive.
/* Currently, these states are implement:

TodosLoadInProgress - the state while our application is fetching todos from the repository.
TodosLoadSuccess - the state of our application after the todos have successfully been loaded.
TodosLoadFailure - the state of our application if the todos were not successfully loaded.

*/

import 'package:equatable/equatable.dart';
import 'package:productbook/models/todo.dart';

abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

class TodosLoadInProgress extends TodosState {}

class TodosLoadSuccess extends TodosState {
  final List<Todo> todos;

  const TodosLoadSuccess([this.todos = const []]);

  @override
  List<Object> get props => [todos];

  @override
  String toString() => 'TodosLoadSuccess { todos: $todos }';
}

class TodosLoadFailure extends TodosState {}
