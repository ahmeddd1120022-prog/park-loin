import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeIconLoginCubit extends Cubit<bool> {
  ChangeIconLoginCubit() : super(true);

  void togglePasswordIcon() {
    emit(!state);
  }
}
