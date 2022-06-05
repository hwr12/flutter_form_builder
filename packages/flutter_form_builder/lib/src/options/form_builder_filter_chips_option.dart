import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

/// An option for filter chips.
///
/// The type `T` is the type of the value the entry represents. All the entries
/// in a given menu must represent values with consistent types.
class FormBuilderFilterChipsOption<T> extends FormBuilderFieldOption<T> {
  final Widget? avatar;

  /// Creates an option for fields with selection options
  const FormBuilderFilterChipsOption({
    Key? key,
    required value,
    this.avatar,
    child,
  }) : super(
          key: key,
          value: value,
          child: child,
        );

  @override
  Widget build(BuildContext context) {
    return child ?? Text(value.toString());
  }
}
