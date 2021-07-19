import 'package:concessionaria_flutter/routes.dart';
import 'package:flutter/material.dart';

import 'db/database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  runApp(
    Routes(
      db: await $FloorAppDatabase.databaseBuilder('app_database.db').build(),
    ),
  );
}
