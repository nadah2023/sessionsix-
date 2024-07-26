import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sessionsix/Home/controller/states.dart';

class HomeCubit extends Cubit<CounterState> {
  HomeCubit() : super(counterInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  int counter = 0;
  void increament() {
    counter++;
    emit(CounterIncreament());
  }

  List newsSports = [];
  void getNews() async {
    emit(GetNewsLoading());
    try {
      final response =
          await Dio().get("https://fakenews.squirro.com/news/sport");
      if (response.data.toString().isEmpty) {
        emit(getNewsFailed());
      } else {
        newsSports = response.data["news"];
        print(newsSports);
        emit(GetNewsSuccess());
      }
    } catch (e) {
      emit(ApiFailed());
    }
  }
}
