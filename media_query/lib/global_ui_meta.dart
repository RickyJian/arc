import 'package:flutter/material.dart';

class GlobalUIMeta {
  static final GlobalUIMeta _singleton = GlobalUIMeta._internal();

  factory GlobalUIMeta() => _singleton;

  GlobalUIMeta._internal();

  late BuildContext _context;

  set context(BuildContext context) => _context = context;

  double getWidth() => MediaQuery.of(_context).size.width;

  double getHeight() => MediaQuery.of(_context).size.height;
}
