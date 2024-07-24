// import 'package:bloc_todo_api/bloc_todo/todo_class.dart';
import 'package:bloc_todo_api/bloc_todo/todo_class.dart';
import 'package:bloc_todo_api/bloc_todo/todo_event.dart';
import 'package:bloc_todo_api/bloc_todo/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  maximumSize: Size(250, 120), minimumSize: Size(200, 20)),
              onPressed: () {},
              child: Text('button')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          BlocBuilder<TodoBloc, List<TodoModel>>(
            builder: (context, state) {
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final todo = state[index];
                    return ListTile(
                      title: Text(todo.name),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: state.length);
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<TodoBloc>().add(AddTodo(name: controller.text));
        },
      ),
    );
  }
}
