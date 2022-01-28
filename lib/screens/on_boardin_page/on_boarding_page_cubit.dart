import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'on_boarding_page_state.dart';

class OnBoardingPageCubit extends Cubit<OnBoardingPageState> {
  OnBoardingPageCubit() : super(OnBoardingPageInitial());
  int _currentPage = 0;
  final int _pagesLength = 3;
  final PageController _controller = PageController(
    initialPage: 0,
  );

  changeCurrentPage(int value) {

    _currentPage = value;
    emit(OnBoardingPageInitial());
  }
  // incrementCount(){
  //   if(_currentPage <= 2) {
  //     _currentPage++;
  //   }
  //   debugPrint( "before:" + currentPage.toString());
  //   emit(OnBoardingPageInitial());
  // }

  void onNextButtonPressed() {
    _currentPage++;
    print('OnBoardingPageCubit.onNextButtonPressed $_currentPage');
    _controller.jumpToPage(_currentPage);
    emit(OnBoardingPageInitial());
  }

  void onSkipButtonPressed() {
    print('OnBoardingPageCubit.onSkipButtonPressed');
  }

  int get currentPage => _currentPage;

  int get pagesLength => _pagesLength;

  PageController get controller => _controller;
}
