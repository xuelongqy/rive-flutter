/// Core automatically generated lib/src/generated/shapes/points_path_base.dart.
/// Do not modify manually.

import 'package:rive/src/generated/component_base.dart';
import 'package:rive/src/generated/container_component_base.dart';
import 'package:rive/src/generated/node_base.dart';
import 'package:rive/src/generated/shapes/path_base.dart';
import 'package:rive/src/rive_core/shapes/path.dart';

abstract class PointsPathBase extends Path {
  static const int typeKey = 16;
  @override
  int get coreType => PointsPathBase.typeKey;
  @override
  Set<int> get coreTypes => {
        PointsPathBase.typeKey,
        PathBase.typeKey,
        NodeBase.typeKey,
        ContainerComponentBase.typeKey,
        ComponentBase.typeKey
      };

  /// --------------------------------------------------------------------------
  /// IsClosed field with key 32.
  bool _isClosed;
  static const int isClosedPropertyKey = 32;

  /// If the path should close back on its first vertex.
  @override
  bool get isClosed => _isClosed;

  /// Change the [_isClosed] field value.
  /// [isClosedChanged] will be invoked only if the field's value has changed.
  set isClosed(bool value) {
    if (_isClosed == value) {
      return;
    }
    bool from = _isClosed;
    _isClosed = value;
    isClosedChanged(from, value);
  }

  void isClosedChanged(bool from, bool to);
}
