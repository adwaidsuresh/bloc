// import 'package:bloc_todo_api/bloc_todo/todo_class.dart';

abstract class BLocTodoEvent {}

class GetDetails extends BLocTodoEvent {}

class AddTodo implements BLocTodoEvent {
  final String name;
  AddTodo({required this.name});
}
