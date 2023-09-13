// Core automatically generated lib/src/generated/shapes/paint/fill_base.dart.
// Do not modify manually.

import 'package:rive/src/core/core.dart';
import 'package:rive/src/generated/component_base.dart';
import 'package:rive/src/generated/container_component_base.dart';
import 'package:rive/src/rive_core/shapes/paint/shape_paint.dart';

abstract class FillBase extends ShapePaint {
  static const int typeKey = 20;
  @override
  int get coreType => FillBase.typeKey;
  @override
  Set<int> get coreTypes => {
        FillBase.typeKey,
        ShapePaintBase.typeKey,
        ContainerComponentBase.typeKey,
        ComponentBase.typeKey
      };

  /// --------------------------------------------------------------------------
  /// FillRule field with key 40.
  static const int fillRulePropertyKey = 40;
  static const int fillRuleInitialValue = 0;
  int _fillRule = fillRuleInitialValue;
  int get fillRule => _fillRule;

  /// Change the [_fillRule] field value.
  /// [fillRuleChanged] will be invoked only if the field's value has changed.
  set fillRule(int value) {
    if (_fillRule == value) {
      return;
    }
    int from = _fillRule;
    _fillRule = value;
    if (hasValidated) {
      fillRuleChanged(from, value);
    }
  }

  void fillRuleChanged(int from, int to);

  @override
  void copy(Core source) {
    super.copy(source);
    if (source is FillBase) {
      _fillRule = source._fillRule;
    }
  }
}
