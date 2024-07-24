import 'package:bloc_todo_api/bloc_api/bloc_bloc.dart';
import 'package:bloc_todo_api/bloc_api/bloc_events.dart';
import 'package:bloc_todo_api/bloc_api/bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocApiView extends StatelessWidget {
  const BlocApiView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<APiBloc>().add(GetApiData());
    return Scaffold(
      body: BlocConsumer<APiBloc, Apidata>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.status == ApiDetailsState.sucess
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 350,
                          height: 100,
                          color: Colors.lightGreen,
                          child: Column(
                            children: [
                              Text(state.data!.entries![index].api!),
                              Text('')
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 11,
                    );
                  },
                  itemCount: 10)
              : Center(
                  child: CircleAvatar(),
                );
        },
      ),
    );
  }
}
