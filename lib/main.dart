import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lenk/firebase_options.dart';

import 'init/screens/root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform,);


  runApp(const MyApp());
}
