import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smartfarm/screens/home/home_page/home_page_view.dart';
import 'package:smartfarm/screens/search/search_page/search_page_view.dart';
part 'body_page_state.dart';

class BodyPageCubit extends Cubit<BodyPageState> {
  BodyPageCubit() : super(BodyPageInitial());

  int currentIndex = 0;

  List pages = [
    const HomePageView(),
    const SearchPageView(),
  ];

  changePage(int index){
    currentIndex = index;
    emit(BodyPageInitial());
  }
}
