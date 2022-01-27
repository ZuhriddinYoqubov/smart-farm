import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'on_boarding_page_state.dart';

class OnBoardingPageCubit extends Cubit<OnBoardingPageState> {
  OnBoardingPageCubit() : super(OnBoardingPageInitial());
  int currentPage = 0;
  int pagesLength = 3;
  final PageController controller = PageController(
    initialPage: 0,

  );

  changeCurrentPage(int value) {
    //print(value);
    currentPage = value;
    emit(OnBoardingPageInitial());
  }
  incrementCount(){
    debugPrint( "after:" + currentPage.toString());
    if(currentPage != 2) {
      currentPage ++;
    }
    debugPrint( "before:" + currentPage.toString());
    emit(OnBoardingPageInitial());
  }
}
