import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'test_widget_state.dart';

class TestWidgetCubit extends Cubit<TestWidgetState> {
  TestWidgetCubit() : super(TestWidgetInitial());
}
