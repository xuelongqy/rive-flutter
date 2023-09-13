// Core automatically generated
// lib/src/generated/animation/nested_bool_base.dart.
// Do not modify manually.

import 'package:rive/src/core/core.dart';
import 'package:rive/src/generated/component_base.dart';
import 'package:rive/src/rive_core/animation/nested_input.dart';

abstract class NestedBoolBase extends NestedInput {
  static const int typeKey = 123;
  @override
  int get coreType => NestedBoolBase.typeKey;
  @override
  Set<int> get coreTypes =>
      {NestedBoolBase.typeKey, NestedInputBase.typeKey, ComponentBase.typeKey};

  /// --------------------------------------------------------------------------
  /// NestedValue field with key 238.
  static const int nestedValuePropertyKey = 238;
  static const bool nestedValueInitialValue = false;
  bool _nestedValue = nestedValueInitialValue;
  bool get nestedValue => _nestedValue;

  /// Change the [_nestedValue] field value.
  /// [nestedValueChanged] will be invoked only if the field's value has
  /// changed.
  set nestedValue(bool value) {
    if (_nestedValue == value) {
      return;
    }
    bool from = _nestedValue;
    _nestedValue = value;
    if (hasValidated) {
      nestedValueChanged(from, value);
    }
  }

  void nestedValueChanged(bool from, bool to);

  @override
  void copy(Core source) {
    super.copy(source);
    if (source is NestedBoolBase) {
      _nestedValue = source._nestedValue;
    }
  }
}
