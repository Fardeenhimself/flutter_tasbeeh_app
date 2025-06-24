import 'package:flutter/material.dart';

class ReflectModel {
  ReflectModel({
    required this.id,
    required this.title,
    required this.arabic,
    required this.translation,
  });

  final int id;
  final String title;
  final String arabic;
  final String translation;
}
