import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'farm_list_page_state.dart';

class FarmListPageCubit extends Cubit<FarmListPageState> {
  FarmListPageCubit() : super(FarmListPageInitial());
}
