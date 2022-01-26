import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smartfarm/screens/calendar_page/calendar_page_view.dart';
import 'package:smartfarm/screens/home/home_page/home_page_view.dart';
import 'package:smartfarm/screens/search/search_page/search_page_view.dart';
import 'package:smartfarm/screens/settings/settings_page/settings_page_view.dart';
part 'body_page_state.dart';

class BodyPageCubit extends Cubit<BodyPageState> {
  BodyPageCubit() : super(BodyPageInitial());

  int currentIndex = 0;

  List pages = [
    //trash
    const HomePageView(),
    const SearchPageView(),
    CalendarPageView(),
    const SettingsPageView(),
  ];

  changePage(int index) {
    currentIndex = index;
    emit(BodyPageInitial());
  }
}
