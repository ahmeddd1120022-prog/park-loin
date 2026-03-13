import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:park_lion/core/utils/constants/const_router_app.dart';
import 'package:park_lion/features/splash/presentation/logic/goToPage/go_to_page_cubit.dart';

class UiBodySplash extends StatelessWidget {
  const UiBodySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GoToPageCubit, GoToPageState>(
      listener: (context, state) {
        GoRouter.of(context).push(ConstRouterApp.idOnboardingView);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 390,
              height: 450,

              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/login/parkline.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
