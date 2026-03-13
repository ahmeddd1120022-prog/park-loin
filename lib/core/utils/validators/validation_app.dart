import 'package:flutter/material.dart';

abstract class ValidationApp {
  /// Validates the email field
  static String? email(String? value) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    if (!emailRegex.hasMatch(value)) {
      return 'Only letters allowed';
    }

    if (!value.endsWith('@gmail.com')) {
      return 'use a valid email ending with @gmail.com';
    }

    if (value.contains(' ')) {
      return 'Email must not contain spaces';
    }

    return null;
  }

  /// Validates the password field
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.contains(' ')) {
      return 'Password must not contain spaces';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    return null;
  }

  /// Validates the confirm password field
  static String? confirmPassword(
    String? value,
    TextEditingController passwordController,
  ) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }

    if (value != passwordController.text) {
      return 'Passwords do not match';
    }

    return null;
  }
}
