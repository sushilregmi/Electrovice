import 'package:flutter/material.dart';

class Device {
  final String id;
  final List<String> categories;
  final String title;
  final List<String> detail;
  final List<String> images;

  const Device({
    required this.id,
    required this.categories,
    required this.title,
    required this.detail,
    required this.images,
  });
}
