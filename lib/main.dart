// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:hello_world/categories_page.dart';

void main() {
  runApp(
    new MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: new CategoriesPage(),
      theme: new ThemeData(textTheme: Theme.of(context).textTheme.apply(
        bodyColor: Colors.blue[700],
      )),
    );
  }

}
