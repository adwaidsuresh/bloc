import 'package:bloc/bloc.dart';
import 'package:bloc_todo_api/bloc_api/api_service.dart';
import 'package:bloc_todo_api/bloc_api/bloc_events.dart';
import 'package:bloc_todo_api/bloc_api/bloc_state.dart';

class APiBloc extends Bloc<BlocApiEvents, Apidata> {
  APiBloc() : super(Apidata()) {
    on<GetApiData>(_onGetapiDetails);
  }

  _onGetapiDetails(BlocApiEvents events, Emitter<Apidata> emit) async {
    try {
      emit(Apidata(status: ApiDetailsState.loading));
      final api = await Apiservice.getpost();
      emit(Apidata(status: ApiDetailsState.sucess, data: api));
    } catch (e) {
      emit(Apidata(status: ApiDetailsState.error, error: e.toString()));
    }
  }
}
