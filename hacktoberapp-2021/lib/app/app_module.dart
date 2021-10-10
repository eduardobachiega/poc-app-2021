import 'package:dio/dio.dart';
import 'package:hacktoberapp/app/shared/network/hacktoberapp/hacktoberapp_api.dart';
import 'package:hacktoberapp/app/shared/repositories/iuser_repository.dart';
import 'package:hacktoberapp/app/shared/repositories/user_repository.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:hacktoberapp/app/app_widget.dart';
import 'package:hacktoberapp/app/modules/home/home_module.dart';

import 'shared/network/api.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    $AppController,
    Bind((i) => Dio()),
    Bind((i) => HacktoberappApi()),
    Bind((i) => Api()),
    Bind<IUserRepository>((i) => UserRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
