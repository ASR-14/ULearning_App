import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_events.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_states.dart';

class WelcomeBloc extends Bloc<WelcomeEvent,WelcomState>{
  WelcomeBloc():super(WelcomState()){
    on<WelcomeEvent>((event, emit) {
      emit(WelcomState(page: state.page));
    },);
  }
}