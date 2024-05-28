import "package:flutter_bloc/flutter_bloc.dart";

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(1);

  void increasement() {
    emit(state + 1);
  }

  void decreasement() {
    if (state == 0) {
      return;
    }
    emit(state - 1);
  }
}
