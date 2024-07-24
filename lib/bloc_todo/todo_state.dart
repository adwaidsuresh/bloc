import 'package:bloc/bloc.dart';
import 'package:bloc_todo_api/bloc_todo/todo_class.dart';
import 'package:bloc_todo_api/bloc_todo/todo_event.dart';

class TodoBloc extends Bloc<BLocTodoEvent, List<TodoModel>> {
  TodoBloc() : super([]) {
    on<GetDetails>((event, emit) {
      List<TodoModel> newtodo = [];
      emit(newtodo);
    });
    on<AddTodo>((event, emit) {
      final todo=TodoModel(name: event.name);
     emit([...state,todo]);
    });
  }
}
