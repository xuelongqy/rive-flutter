// Core automatically generated lib/src/generated/text/text_base.dart.
// Do not modify manually.

import 'package:rive/src/core/core.dart';
import 'package:rive/src/generated/component_base.dart';
import 'package:rive/src/generated/container_component_base.dart';
import 'package:rive/src/generated/node_base.dart';
import 'package:rive/src/generated/transform_component_base.dart';
import 'package:rive/src/generated/world_transform_component_base.dart';
import 'package:rive/src/rive_core/drawable.dart';

abstract class TextBase extends Drawable {
  static const int typeKey = 134;
  @override
  int get coreType => TextBase.typeKey;
  @override
  Set<int> get coreTypes => {
        TextBase.typeKey,
        DrawableBase.typeKey,
        NodeBase.typeKey,
        TransformComponentBase.typeKey,
        WorldTransformComponentBase.typeKey,
        ContainerComponentBase.typeKey,
        ComponentBase.typeKey
      };

  /// --------------------------------------------------------------------------
  /// AlignValue field with key 281.
  static const int alignValuePropertyKey = 281;
  static const int alignValueInitialValue = 0;
  int _alignValue = alignValueInitialValue;
  int get alignValue => _alignValue;

  /// Change the [_alignValue] field value.
  /// [alignValueChanged] will be invoked only if the field's value has changed.
  set alignValue(int value) {
    if (_alignValue == value) {
      return;
    }
    int from = _alignValue;
    _alignValue = value;
    if (hasValidated) {
      alignValueChanged(from, value);
    }
  }

  void alignValueChanged(int from, int to);

  /// --------------------------------------------------------------------------
  /// SizingValue field with key 284.
  static const int sizingValuePropertyKey = 284;
  static const int sizingValueInitialValue = 0;
  int _sizingValue = sizingValueInitialValue;
  int get sizingValue => _sizingValue;

  /// Change the [_sizingValue] field value.
  /// [sizingValueChanged] will be invoked only if the field's value has
  /// changed.
  set sizingValue(int value) {
    if (_sizingValue == value) {
      return;
    }
    int from = _sizingValue;
    _sizingValue = value;
    if (hasValidated) {
      sizingValueChanged(from, value);
    }
  }

  void sizingValueChanged(int from, int to);

  /// --------------------------------------------------------------------------
  /// OverflowValue field with key 287.
  static const int overflowValuePropertyKey = 287;
  static const int overflowValueInitialValue = 0;
  int _overflowValue = overflowValueInitialValue;

  /// One of visible, hidden, clipped, ellipsis.
  int get overflowValue => _overflowValue;

  /// Change the [_overflowValue] field value.
  /// [overflowValueChanged] will be invoked only if the field's value has
  /// changed.
  set overflowValue(int value) {
    if (_overflowValue == value) {
      return;
    }
    int from = _overflowValue;
    _overflowValue = value;
    if (hasValidated) {
      overflowValueChanged(from, value);
    }
  }

  void overflowValueChanged(int from, int to);

  /// --------------------------------------------------------------------------
  /// Width field with key 285.
  static const int widthPropertyKey = 285;
  static const double widthInitialValue = 0;
  double _width = widthInitialValue;

  /// Width of the text object.
  double get width => _width;

  /// Change the [_width] field value.
  /// [widthChanged] will be invoked only if the field's value has changed.
  set width(double value) {
    if (_width == value) {
      return;
    }
    double from = _width;
    _width = value;
    if (hasValidated) {
      widthChanged(from, value);
    }
  }

  void widthChanged(double from, double to);

  /// --------------------------------------------------------------------------
  /// Height field with key 286.
  static const int heightPropertyKey = 286;
  static const double heightInitialValue = 0;
  double _height = heightInitialValue;

  /// Height of the text object.
  double get height => _height;

  /// Change the [_height] field value.
  /// [heightChanged] will be invoked only if the field's value has changed.
  set height(double value) {
    if (_height == value) {
      return;
    }
    double from = _height;
    _height = value;
    if (hasValidated) {
      heightChanged(from, value);
    }
  }

  void heightChanged(double from, double to);

  /// --------------------------------------------------------------------------
  /// OriginX field with key 366.
  static const int originXPropertyKey = 366;
  static const double originXInitialValue = 0.0;
  double _originX = originXInitialValue;

  /// Origin x in normalized coordinates (0.5 = center, 0 = left, 1 = right).
  double get originX => _originX;

  /// Change the [_originX] field value.
  /// [originXChanged] will be invoked only if the field's value has changed.
  set originX(double value) {
    if (_originX == value) {
      return;
    }
    double from = _originX;
    _originX = value;
    if (hasValidated) {
      originXChanged(from, value);
    }
  }

  void originXChanged(double from, double to);

  /// --------------------------------------------------------------------------
  /// OriginY field with key 367.
  static const int originYPropertyKey = 367;
  static const double originYInitialValue = 0.0;
  double _originY = originYInitialValue;

  /// Origin y in normalized coordinates (0.5 = center, 0 = top, 1 = bottom).
  double get originY => _originY;

  /// Change the [_originY] field value.
  /// [originYChanged] will be invoked only if the field's value has changed.
  set originY(double value) {
    if (_originY == value) {
      return;
    }
    double from = _originY;
    _originY = value;
    if (hasValidated) {
      originYChanged(from, value);
    }
  }

  void originYChanged(double from, double to);

  /// --------------------------------------------------------------------------
  /// ParagraphSpacing field with key 371.
  static const int paragraphSpacingPropertyKey = 371;
  static const double paragraphSpacingInitialValue = 0.0;
  double _paragraphSpacing = paragraphSpacingInitialValue;
  double get paragraphSpacing => _paragraphSpacing;

  /// Change the [_paragraphSpacing] field value.
  /// [paragraphSpacingChanged] will be invoked only if the field's value has
  /// changed.
  set paragraphSpacing(double value) {
    if (_paragraphSpacing == value) {
      return;
    }
    double from = _paragraphSpacing;
    _paragraphSpacing = value;
    if (hasValidated) {
      paragraphSpacingChanged(from, value);
    }
  }

  void paragraphSpacingChanged(double from, double to);

  /// --------------------------------------------------------------------------
  /// OriginValue field with key 377.
  static const int originValuePropertyKey = 377;
  static const int originValueInitialValue = 0;
  int _originValue = originValueInitialValue;

  /// Logical starting location of origin.
  int get originValue => _originValue;

  /// Change the [_originValue] field value.
  /// [originValueChanged] will be invoked only if the field's value has
  /// changed.
  set originValue(int value) {
    if (_originValue == value) {
      return;
    }
    int from = _originValue;
    _originValue = value;
    if (hasValidated) {
      originValueChanged(from, value);
    }
  }

  void originValueChanged(int from, int to);

  @override
  void copy(Core source) {
    super.copy(source);
    if (source is TextBase) {
      _alignValue = source._alignValue;
      _sizingValue = source._sizingValue;
      _overflowValue = source._overflowValue;
      _width = source._width;
      _height = source._height;
      _originX = source._originX;
      _originY = source._originY;
      _paragraphSpacing = source._paragraphSpacing;
      _originValue = source._originValue;
    }
  }
}
