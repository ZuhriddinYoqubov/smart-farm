import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_up_secund_state.dart';

class SignUpSecundCubit extends Cubit<SignUpSecundState> {
  SignUpSecundCubit() : super(SignUpSecundInitial());
}
