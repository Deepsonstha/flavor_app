import 'dart:developer';

import 'package:flavor_app/cubit/flavor_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlavorCubit extends Cubit<FlavorConfig> {
  FlavorCubit() : super(FlavorConfig());

  void updateConfig(FlavorConfig config) {
    emit(config.copyWith(
      appTitle: config.appTitle,
    ));
    log("cubit tit ::${state.appTitle}");
  }
}
