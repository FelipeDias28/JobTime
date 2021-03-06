import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_time/app/app_module.dart';
import 'package:job_time/firebase_options.dart';

import 'app/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Faz o android ser inicializado antes de tudo

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
