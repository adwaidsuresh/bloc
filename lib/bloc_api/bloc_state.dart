
import 'package:bloc_todo_api/bloc_api/model_class.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bloc_state.freezed.dart';
enum ApiDetailsState {
  initial,
  loading,
  sucess,
  error,
}

extension ApiDetailsBool on ApiDetailsState {
  bool get isInitial => this == ApiDetailsState.initial;
  bool get isLoading => this == ApiDetailsState.loading;
  bool get isSucess => this == ApiDetailsState.sucess;
  bool get isError => this == ApiDetailsState.error;
}

@freezed 
class Apidata with _$Apidata{
  factory Apidata({
    @Default(ApiDetailsState.initial)ApiDetailsState status,
    @Default(null)Maxvalue?data,
    @Default('')String error,
  })=_Apidata;
}
