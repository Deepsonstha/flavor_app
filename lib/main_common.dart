// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flavor_app/cubit/flavor_cubit.dart';
import 'package:flavor_app/cubit/flavor_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void mainCommon({
  required FlavorConfig config,
}) {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FlavorCubit(),
        )
      ],
      child: MyApp(
        config: config,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final FlavorConfig config;
  const MyApp({
    super.key,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {
    context.read<FlavorCubit>().updateConfig(config);
    return BlocBuilder<FlavorCubit, FlavorConfig>(
      builder: (context, state) {
        return MaterialApp(
          title: state.appTitle.toString(),
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Scaffold(
            appBar: AppBar(
              title: Text(
                state.appTitle.toString(),
              ),
            ),
            body: Center(
              child: Text("${state.appTitle}"),
            ),
          ),
        );
      },
    );
  }
}
