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
}
