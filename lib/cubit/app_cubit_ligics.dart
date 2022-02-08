import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliders/cubit/app_cubit_state.dart';
import 'package:sliders/cubit/app_cubits.dart';
import 'package:sliders/pages/home_page.dart';
import 'package:sliders/pages/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  _AppCubitLogivsState createState() => _AppCubitLogivsState();
}

class _AppCubitLogivsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitState>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return WelcomePage();
          }
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is LoadingState) {
            return HomePage();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
