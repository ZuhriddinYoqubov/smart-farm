import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cities_list_page_state.dart';

class CitiesListPageCubit extends Cubit<CitiesListPageState> {
  CitiesListPageCubit() : super(CitiesListPageInitial());
}
