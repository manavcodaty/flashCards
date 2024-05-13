import 'package:flutter/material.dart';
import 'views/deck_list.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() async {
  //added below 2 lines to resolve databaseFactory not
  // initialized in windows
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DeckList(),
  ));
}
