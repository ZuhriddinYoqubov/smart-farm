import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smartfarm/screens/home/home_page_view.dart';
import 'package:smartfarm/screens/search_page/search_page_view.dart';

part 'body_page_state.dart';

class BodyPageCubit extends Cubit<BodyPageState> {
  BodyPageCubit() : super(BodyPageInitial());

  int currentIndex = 0;

  List pages = [
    HomePageView(),
    SearchPageView(),
  ];

  changePage(int index){
    currentIndex = index;
    emit(BodyPageInitial());
  }
}
