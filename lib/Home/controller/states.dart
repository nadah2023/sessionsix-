abstract class CounterState {}

class counterInitial extends CounterState {}

class CounterIncreament extends CounterState {}

class GetNewsLoading extends CounterState {}

class GetNewsSuccess extends CounterState {}

class getNewsFailed extends CounterState {}

class ApiFailed extends CounterState {}
