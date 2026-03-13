import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'go_to_page_state.dart';

class GoToPageCubit extends Cubit<GoToPageState> {
  GoToPageCubit() : super(GoToPageInitial());
  Timer? _timer;
  Future<void> goToPage() async {
    _timer = Timer(Duration(seconds: 3), () {
      if (!isClosed) {
        emit(GoToPageFinsh());
      }
    });
  }

  @override
  Future<void> close() async {
    _timer?.cancel();
    return super.close();
  }
}
