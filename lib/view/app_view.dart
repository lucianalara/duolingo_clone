import 'package:duolingo_clone/view/initial_view/initial_view_mobile.dart';
import 'package:duolingo_clone/view_model/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SignInModel(),
      child: const MaterialApp(
        home: Scaffold(
          body: InitialViewMobile(),
        ),
      ),
    ),
  );
}
