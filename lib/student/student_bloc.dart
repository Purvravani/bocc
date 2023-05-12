import 'package:bloc/bloc.dart';

import 'student_event.dart';
import 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(Sum_State(0)) {
    on<InitEvent>((event, emit) {
      emit(Sum_State(0));
    },);
    on<Sum_class>((event, emit) {
      int sum=int.parse(event.t)+int.parse(event.s);
      emit(Sum_State(sum));
    });
    on<Sub_class>((event, emit) {
      int sum=int.parse(event.t)-int.parse(event.s);
      emit(Sub_State(sum));
    });
  }

 
}
