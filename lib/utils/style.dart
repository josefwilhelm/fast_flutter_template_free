import 'package:flutter/material.dart';

class Spacing {
  static const p4 = 4.0;
  static const p8 = 8.0;
  static const p12 = 12.0;
  static const p16 = 16.0;
  static const p20 = 20.0;
  static const p24 = 24.0;
  static const p32 = 32.0;
  static const p48 = 48.0;
  static const p64 = 64.0;
}

final defaultBoderRadius = BorderRadius.circular(8);

final defaultTextfieldInputDecoration = InputDecoration(
  filled: true,
  focusedBorder: UnderlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent),
    borderRadius: defaultBoderRadius,
  ),
  focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent)),
  errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent)),
  enabledBorder: UnderlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent),
    borderRadius: defaultBoderRadius,
  ),
);

const horizontalSpace4 = SizedBox(width: Spacing.p4);
const horizontalSpace8 = SizedBox(width: Spacing.p8);
const horizontalSpace12 = SizedBox(width: Spacing.p12);
const horizontalSpace16 = SizedBox(width: Spacing.p16);
const horizontalSpace20 = SizedBox(width: Spacing.p20);
const horizontalSpace24 = SizedBox(width: Spacing.p24);
const horizontalSpace32 = SizedBox(width: Spacing.p32);
const horizontalSpace48 = SizedBox(width: Spacing.p48);
const horizontalSpace64 = SizedBox(width: Spacing.p64);

/// Constant gap heights
const verticalSpace4 = SizedBox(height: Spacing.p4);
const verticalSpace8 = SizedBox(height: Spacing.p8);
const verticalSpace12 = SizedBox(height: Spacing.p12);
const verticalSpace16 = SizedBox(height: Spacing.p16);
const verticalSpace20 = SizedBox(height: Spacing.p20);
const verticalSpace24 = SizedBox(height: Spacing.p24);
const verticalSpace32 = SizedBox(height: Spacing.p32);
const verticalSpace48 = SizedBox(height: Spacing.p48);
const verticalSpace64 = SizedBox(height: Spacing.p64);
