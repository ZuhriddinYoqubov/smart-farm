import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'on_boarding_page_state.dart';

class OnBoardingPageCubit extends Cubit<OnBoardingPageState> {
  OnBoardingPageCubit() : super(OnBoardingPageInitial());
  int indicatorIndex = 0;
  int indicatorLength = 3;
  

  changeIndicatorIndex(int value){
    indicatorIndex = value;
    emit(OnBoardingPageInitial());
  }
}
