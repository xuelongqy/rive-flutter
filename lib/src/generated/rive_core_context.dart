import 'package:rive/src/core/core.dart';
import 'package:rive/src/core/field_types/core_bool_type.dart';
import 'package:rive/src/core/field_types/core_bytes_type.dart';
import 'package:rive/src/core/field_types/core_color_type.dart';
import 'package:rive/src/core/field_types/core_double_type.dart';
import 'package:rive/src/core/field_types/core_field_type.dart';
import 'package:rive/src/core/field_types/core_string_type.dart';
import 'package:rive/src/core/field_types/core_uint_type.dart';
import 'package:rive/src/generated/animation/advanceable_state_base.dart';
import 'package:rive/src/generated/animation/blend_animation_base.dart';
import 'package:rive/src/generated/animation/cubic_ease_interpolator_base.dart';
import 'package:rive/src/generated/animation/cubic_interpolator_base.dart';
import 'package:rive/src/generated/animation/interpolating_keyframe_base.dart';
import 'package:rive/src/generated/animation/keyframe_base.dart';
import 'package:rive/src/generated/animation/keyframe_string_base.dart';
import 'package:rive/src/generated/animation/listener_input_change_base.dart';
import 'package:rive/src/generated/animation/nested_input_base.dart';
import 'package:rive/src/generated/animation/nested_linear_animation_base.dart';
import 'package:rive/src/generated/animation/state_machine_component_base.dart';
import 'package:rive/src/generated/animation/transition_condition_base.dart';
import 'package:rive/src/generated/animation/transition_value_condition_base.dart';
import 'package:rive/src/generated/assets/asset_base.dart';
import 'package:rive/src/generated/assets/drawable_asset_base.dart';
import 'package:rive/src/generated/assets/file_asset_base.dart';
import 'package:rive/src/generated/component_base.dart';
import 'package:rive/src/generated/constraints/constraint_base.dart';
import 'package:rive/src/generated/constraints/targeted_constraint_base.dart';
import 'package:rive/src/generated/constraints/transform_component_constraint_base.dart';
import 'package:rive/src/generated/constraints/transform_component_constraint_y_base.dart';
import 'package:rive/src/generated/constraints/transform_space_constraint_base.dart';
import 'package:rive/src/generated/drawable_base.dart';
import 'package:rive/src/generated/nested_animation_base.dart';
import 'package:rive/src/generated/shapes/paint/shape_paint_base.dart';
import 'package:rive/src/generated/shapes/parametric_path_base.dart';
import 'package:rive/src/generated/shapes/path_base.dart';
import 'package:rive/src/generated/shapes/vertex_base.dart';
import 'package:rive/src/generated/transform_component_base.dart';
import 'package:rive/src/generated/world_transform_component_base.dart';
import 'package:rive/src/rive_core/animation/animation.dart';
import 'package:rive/src/rive_core/animation/animation_state.dart';
import 'package:rive/src/rive_core/animation/any_state.dart';
import 'package:rive/src/rive_core/animation/blend_animation_1d.dart';
import 'package:rive/src/rive_core/animation/blend_animation_direct.dart';
import 'package:rive/src/rive_core/animation/blend_state_1d.dart';
import 'package:rive/src/rive_core/animation/blend_state_direct.dart';
import 'package:rive/src/rive_core/animation/blend_state_transition.dart';
import 'package:rive/src/rive_core/animation/cubic_ease_interpolator.dart';
import 'package:rive/src/rive_core/animation/cubic_interpolator_component.dart';
import 'package:rive/src/rive_core/animation/cubic_value_interpolator.dart';
import 'package:rive/src/rive_core/animation/entry_state.dart';
import 'package:rive/src/rive_core/animation/exit_state.dart';
import 'package:rive/src/rive_core/animation/keyed_object.dart';
import 'package:rive/src/rive_core/animation/keyed_property.dart';
import 'package:rive/src/rive_core/animation/keyframe_bool.dart';
import 'package:rive/src/rive_core/animation/keyframe_callback.dart';
import 'package:rive/src/rive_core/animation/keyframe_color.dart';
import 'package:rive/src/rive_core/animation/keyframe_double.dart';
import 'package:rive/src/rive_core/animation/keyframe_id.dart';
import 'package:rive/src/rive_core/animation/keyframe_string.dart';
import 'package:rive/src/rive_core/animation/linear_animation.dart';
import 'package:rive/src/rive_core/animation/listener_align_target.dart';
import 'package:rive/src/rive_core/animation/listener_bool_change.dart';
import 'package:rive/src/rive_core/animation/listener_fire_event.dart';
import 'package:rive/src/rive_core/animation/listener_number_change.dart';
import 'package:rive/src/rive_core/animation/listener_trigger_change.dart';
import 'package:rive/src/rive_core/animation/nested_bool.dart';
import 'package:rive/src/rive_core/animation/nested_number.dart';
import 'package:rive/src/rive_core/animation/nested_remap_animation.dart';
import 'package:rive/src/rive_core/animation/nested_simple_animation.dart';
import 'package:rive/src/rive_core/animation/nested_state_machine.dart';
import 'package:rive/src/rive_core/animation/nested_trigger.dart';
import 'package:rive/src/rive_core/animation/state_machine.dart';
import 'package:rive/src/rive_core/animation/state_machine_bool.dart';
import 'package:rive/src/rive_core/animation/state_machine_fire_event.dart';
import 'package:rive/src/rive_core/animation/state_machine_layer.dart';
import 'package:rive/src/rive_core/animation/state_machine_listener.dart';
import 'package:rive/src/rive_core/animation/state_machine_number.dart';
import 'package:rive/src/rive_core/animation/state_machine_trigger.dart';
import 'package:rive/src/rive_core/animation/state_transition.dart';
import 'package:rive/src/rive_core/animation/transition_bool_condition.dart';
import 'package:rive/src/rive_core/animation/transition_number_condition.dart';
import 'package:rive/src/rive_core/animation/transition_trigger_condition.dart';
import 'package:rive/src/rive_core/artboard.dart';
import 'package:rive/src/rive_core/assets/file_asset_contents.dart';
import 'package:rive/src/rive_core/assets/folder.dart';
import 'package:rive/src/rive_core/assets/font_asset.dart';
import 'package:rive/src/rive_core/assets/image_asset.dart';
import 'package:rive/src/rive_core/backboard.dart';
import 'package:rive/src/rive_core/bones/bone.dart';
import 'package:rive/src/rive_core/bones/cubic_weight.dart';
import 'package:rive/src/rive_core/bones/root_bone.dart';
import 'package:rive/src/rive_core/bones/skin.dart';
import 'package:rive/src/rive_core/bones/tendon.dart';
import 'package:rive/src/rive_core/bones/weight.dart';
import 'package:rive/src/rive_core/constraints/distance_constraint.dart';
import 'package:rive/src/rive_core/constraints/follow_path_constraint.dart';
import 'package:rive/src/rive_core/constraints/ik_constraint.dart';
import 'package:rive/src/rive_core/constraints/rotation_constraint.dart';
import 'package:rive/src/rive_core/constraints/scale_constraint.dart';
import 'package:rive/src/rive_core/constraints/transform_constraint.dart';
import 'package:rive/src/rive_core/constraints/translation_constraint.dart';
import 'package:rive/src/rive_core/custom_property_boolean.dart';
import 'package:rive/src/rive_core/custom_property_number.dart';
import 'package:rive/src/rive_core/custom_property_string.dart';
import 'package:rive/src/rive_core/draw_rules.dart';
import 'package:rive/src/rive_core/draw_target.dart';
import 'package:rive/src/rive_core/event.dart';
import 'package:rive/src/rive_core/joystick.dart';
import 'package:rive/src/rive_core/nested_artboard.dart';
import 'package:rive/src/rive_core/node.dart';
import 'package:rive/src/rive_core/open_url_event.dart';
import 'package:rive/src/rive_core/shapes/clipping_shape.dart';
import 'package:rive/src/rive_core/shapes/contour_mesh_vertex.dart';
import 'package:rive/src/rive_core/shapes/cubic_asymmetric_vertex.dart';
import 'package:rive/src/rive_core/shapes/cubic_detached_vertex.dart';
import 'package:rive/src/rive_core/shapes/cubic_mirrored_vertex.dart';
import 'package:rive/src/rive_core/shapes/ellipse.dart';
import 'package:rive/src/rive_core/shapes/image.dart';
import 'package:rive/src/rive_core/shapes/mesh.dart';
import 'package:rive/src/rive_core/shapes/mesh_vertex.dart';
import 'package:rive/src/rive_core/shapes/paint/fill.dart';
import 'package:rive/src/rive_core/shapes/paint/gradient_stop.dart';
import 'package:rive/src/rive_core/shapes/paint/linear_gradient.dart';
import 'package:rive/src/rive_core/shapes/paint/radial_gradient.dart';
import 'package:rive/src/rive_core/shapes/paint/solid_color.dart';
import 'package:rive/src/rive_core/shapes/paint/stroke.dart';
import 'package:rive/src/rive_core/shapes/paint/trim_path.dart';
import 'package:rive/src/rive_core/shapes/points_path.dart';
import 'package:rive/src/rive_core/shapes/polygon.dart';
import 'package:rive/src/rive_core/shapes/rectangle.dart';
import 'package:rive/src/rive_core/shapes/shape.dart';
import 'package:rive/src/rive_core/shapes/star.dart';
import 'package:rive/src/rive_core/shapes/straight_vertex.dart';
import 'package:rive/src/rive_core/shapes/triangle.dart';
import 'package:rive/src/rive_core/solo.dart';
import 'package:rive/src/rive_core/text/text.dart';
import 'package:rive/src/rive_core/text/text_modifier_group.dart';
import 'package:rive/src/rive_core/text/text_modifier_range.dart';
import 'package:rive/src/rive_core/text/text_style.dart';
import 'package:rive/src/rive_core/text/text_style_axis.dart';
import 'package:rive/src/rive_core/text/text_style_feature.dart';
import 'package:rive/src/rive_core/text/text_value_run.dart';
import 'package:rive/src/rive_core/text/text_variation_modifier.dart';

// ignore: avoid_classes_with_only_static_members
class RiveCoreContext {
  static Core? makeCoreInstance(int typeKey) {
    switch (typeKey) {
      case DrawTargetBase.typeKey:
        return DrawTarget();
      case CustomPropertyNumberBase.typeKey:
        return CustomPropertyNumber();
      case DistanceConstraintBase.typeKey:
        return DistanceConstraint();
      case IKConstraintBase.typeKey:
        return IKConstraint();
      case FollowPathConstraintBase.typeKey:
        return FollowPathConstraint();
      case TranslationConstraintBase.typeKey:
        return TranslationConstraint();
      case TransformConstraintBase.typeKey:
        return TransformConstraint();
      case ScaleConstraintBase.typeKey:
        return ScaleConstraint();
      case RotationConstraintBase.typeKey:
        return RotationConstraint();
      case NodeBase.typeKey:
        return Node();
      case NestedArtboardBase.typeKey:
        return NestedArtboard();
      case SoloBase.typeKey:
        return Solo();
      case ListenerFireEventBase.typeKey:
        return ListenerFireEvent();
      case AnimationBase.typeKey:
        return Animation();
      case LinearAnimationBase.typeKey:
        return LinearAnimation();
      case NestedSimpleAnimationBase.typeKey:
        return NestedSimpleAnimation();
      case AnimationStateBase.typeKey:
        return AnimationState();
      case NestedTriggerBase.typeKey:
        return NestedTrigger();
      case KeyedObjectBase.typeKey:
        return KeyedObject();
      case BlendAnimationDirectBase.typeKey:
        return BlendAnimationDirect();
      case StateMachineNumberBase.typeKey:
        return StateMachineNumber();
      case CubicValueInterpolatorBase.typeKey:
        return CubicValueInterpolator();
      case TransitionTriggerConditionBase.typeKey:
        return TransitionTriggerCondition();
      case KeyedPropertyBase.typeKey:
        return KeyedProperty();
      case StateMachineListenerBase.typeKey:
        return StateMachineListener();
      case KeyFrameIdBase.typeKey:
        return KeyFrameId();
      case KeyFrameBoolBase.typeKey:
        return KeyFrameBool();
      case ListenerBoolChangeBase.typeKey:
        return ListenerBoolChange();
      case ListenerAlignTargetBase.typeKey:
        return ListenerAlignTarget();
      case TransitionNumberConditionBase.typeKey:
        return TransitionNumberCondition();
      case AnyStateBase.typeKey:
        return AnyState();
      case CubicInterpolatorComponentBase.typeKey:
        return CubicInterpolatorComponent();
      case StateMachineLayerBase.typeKey:
        return StateMachineLayer();
      case KeyFrameStringBase.typeKey:
        return KeyFrameString();
      case ListenerNumberChangeBase.typeKey:
        return ListenerNumberChange();
      case CubicEaseInterpolatorBase.typeKey:
        return CubicEaseInterpolator();
      case StateTransitionBase.typeKey:
        return StateTransition();
      case NestedBoolBase.typeKey:
        return NestedBool();
      case KeyFrameDoubleBase.typeKey:
        return KeyFrameDouble();
      case KeyFrameColorBase.typeKey:
        return KeyFrameColor();
      case StateMachineBase.typeKey:
        return StateMachine();
      case StateMachineFireEventBase.typeKey:
        return StateMachineFireEvent();
      case EntryStateBase.typeKey:
        return EntryState();
      case StateMachineTriggerBase.typeKey:
        return StateMachineTrigger();
      case ListenerTriggerChangeBase.typeKey:
        return ListenerTriggerChange();
      case BlendStateDirectBase.typeKey:
        return BlendStateDirect();
      case NestedStateMachineBase.typeKey:
        return NestedStateMachine();
      case ExitStateBase.typeKey:
        return ExitState();
      case NestedNumberBase.typeKey:
        return NestedNumber();
      case BlendAnimation1DBase.typeKey:
        return BlendAnimation1D();
      case BlendState1DBase.typeKey:
        return BlendState1D();
      case KeyFrameCallbackBase.typeKey:
        return KeyFrameCallback();
      case NestedRemapAnimationBase.typeKey:
        return NestedRemapAnimation();
      case TransitionBoolConditionBase.typeKey:
        return TransitionBoolCondition();
      case BlendStateTransitionBase.typeKey:
        return BlendStateTransition();
      case StateMachineBoolBase.typeKey:
        return StateMachineBool();
      case LinearGradientBase.typeKey:
        return LinearGradient();
      case RadialGradientBase.typeKey:
        return RadialGradient();
      case StrokeBase.typeKey:
        return Stroke();
      case SolidColorBase.typeKey:
        return SolidColor();
      case GradientStopBase.typeKey:
        return GradientStop();
      case TrimPathBase.typeKey:
        return TrimPath();
      case FillBase.typeKey:
        return Fill();
      case MeshVertexBase.typeKey:
        return MeshVertex();
      case ShapeBase.typeKey:
        return Shape();
      case WeightBase.typeKey:
        return Weight();
      case StraightVertexBase.typeKey:
        return StraightVertex();
      case CubicWeightBase.typeKey:
        return CubicWeight();
      case CubicAsymmetricVertexBase.typeKey:
        return CubicAsymmetricVertex();
      case MeshBase.typeKey:
        return Mesh();
      case PointsPathBase.typeKey:
        return PointsPath();
      case ContourMeshVertexBase.typeKey:
        return ContourMeshVertex();
      case RectangleBase.typeKey:
        return Rectangle();
      case CubicMirroredVertexBase.typeKey:
        return CubicMirroredVertex();
      case TriangleBase.typeKey:
        return Triangle();
      case EllipseBase.typeKey:
        return Ellipse();
      case ClippingShapeBase.typeKey:
        return ClippingShape();
      case PolygonBase.typeKey:
        return Polygon();
      case StarBase.typeKey:
        return Star();
      case ImageBase.typeKey:
        return Image();
      case CubicDetachedVertexBase.typeKey:
        return CubicDetachedVertex();
      case EventBase.typeKey:
        return Event();
      case DrawRulesBase.typeKey:
        return DrawRules();
      case CustomPropertyBooleanBase.typeKey:
        return CustomPropertyBoolean();
      case ArtboardBase.typeKey:
        return Artboard();
      case JoystickBase.typeKey:
        return Joystick();
      case BackboardBase.typeKey:
        return Backboard();
      case OpenUrlEventBase.typeKey:
        return OpenUrlEvent();
      case BoneBase.typeKey:
        return Bone();
      case RootBoneBase.typeKey:
        return RootBone();
      case SkinBase.typeKey:
        return Skin();
      case TendonBase.typeKey:
        return Tendon();
      case TextModifierRangeBase.typeKey:
        return TextModifierRange();
      case TextStyleFeatureBase.typeKey:
        return TextStyleFeature();
      case TextVariationModifierBase.typeKey:
        return TextVariationModifier();
      case TextModifierGroupBase.typeKey:
        return TextModifierGroup();
      case TextStyleBase.typeKey:
        return TextStyle();
      case TextStyleAxisBase.typeKey:
        return TextStyleAxis();
      case TextBase.typeKey:
        return Text();
      case TextValueRunBase.typeKey:
        return TextValueRun();
      case CustomPropertyStringBase.typeKey:
        return CustomPropertyString();
      case FolderBase.typeKey:
        return Folder();
      case ImageAssetBase.typeKey:
        return ImageAsset();
      case FontAssetBase.typeKey:
        return FontAsset();
      case FileAssetContentsBase.typeKey:
        return FileAssetContents();
      default:
        return null;
    }
  }

  static void setObjectProperty(Core object, int propertyKey, Object value) {
    switch (propertyKey) {
      case ComponentBase.namePropertyKey:
        if (object is ComponentBase && value is String) {
          object.name = value;
        }
        break;
      case ComponentBase.parentIdPropertyKey:
        if (object is ComponentBase && value is int) {
          object.parentId = value;
        }
        break;
      case DrawTargetBase.drawableIdPropertyKey:
        if (object is DrawTargetBase && value is int) {
          object.drawableId = value;
        }
        break;
      case DrawTargetBase.placementValuePropertyKey:
        if (object is DrawTargetBase && value is int) {
          object.placementValue = value;
        }
        break;
      case CustomPropertyNumberBase.propertyValuePropertyKey:
        if (object is CustomPropertyNumberBase && value is double) {
          object.propertyValue = value;
        }
        break;
      case ConstraintBase.strengthPropertyKey:
        if (object is ConstraintBase && value is double) {
          object.strength = value;
        }
        break;
      case TargetedConstraintBase.targetIdPropertyKey:
        if (object is TargetedConstraintBase && value is int) {
          object.targetId = value;
        }
        break;
      case DistanceConstraintBase.distancePropertyKey:
        if (object is DistanceConstraintBase && value is double) {
          object.distance = value;
        }
        break;
      case DistanceConstraintBase.modeValuePropertyKey:
        if (object is DistanceConstraintBase && value is int) {
          object.modeValue = value;
        }
        break;
      case TransformSpaceConstraintBase.sourceSpaceValuePropertyKey:
        if (object is TransformSpaceConstraintBase && value is int) {
          object.sourceSpaceValue = value;
        }
        break;
      case TransformSpaceConstraintBase.destSpaceValuePropertyKey:
        if (object is TransformSpaceConstraintBase && value is int) {
          object.destSpaceValue = value;
        }
        break;
      case TransformComponentConstraintBase.minMaxSpaceValuePropertyKey:
        if (object is TransformComponentConstraintBase && value is int) {
          object.minMaxSpaceValue = value;
        }
        break;
      case TransformComponentConstraintBase.copyFactorPropertyKey:
        if (object is TransformComponentConstraintBase && value is double) {
          object.copyFactor = value;
        }
        break;
      case TransformComponentConstraintBase.minValuePropertyKey:
        if (object is TransformComponentConstraintBase && value is double) {
          object.minValue = value;
        }
        break;
      case TransformComponentConstraintBase.maxValuePropertyKey:
        if (object is TransformComponentConstraintBase && value is double) {
          object.maxValue = value;
        }
        break;
      case TransformComponentConstraintBase.offsetPropertyKey:
        if (object is TransformComponentConstraintBase && value is bool) {
          object.offset = value;
        }
        break;
      case TransformComponentConstraintBase.doesCopyPropertyKey:
        if (object is TransformComponentConstraintBase && value is bool) {
          object.doesCopy = value;
        }
        break;
      case TransformComponentConstraintBase.minPropertyKey:
        if (object is TransformComponentConstraintBase && value is bool) {
          object.min = value;
        }
        break;
      case TransformComponentConstraintBase.maxPropertyKey:
        if (object is TransformComponentConstraintBase && value is bool) {
          object.max = value;
        }
        break;
      case TransformComponentConstraintYBase.copyFactorYPropertyKey:
        if (object is TransformComponentConstraintYBase && value is double) {
          object.copyFactorY = value;
        }
        break;
      case TransformComponentConstraintYBase.minValueYPropertyKey:
        if (object is TransformComponentConstraintYBase && value is double) {
          object.minValueY = value;
        }
        break;
      case TransformComponentConstraintYBase.maxValueYPropertyKey:
        if (object is TransformComponentConstraintYBase && value is double) {
          object.maxValueY = value;
        }
        break;
      case TransformComponentConstraintYBase.doesCopyYPropertyKey:
        if (object is TransformComponentConstraintYBase && value is bool) {
          object.doesCopyY = value;
        }
        break;
      case TransformComponentConstraintYBase.minYPropertyKey:
        if (object is TransformComponentConstraintYBase && value is bool) {
          object.minY = value;
        }
        break;
      case TransformComponentConstraintYBase.maxYPropertyKey:
        if (object is TransformComponentConstraintYBase && value is bool) {
          object.maxY = value;
        }
        break;
      case IKConstraintBase.invertDirectionPropertyKey:
        if (object is IKConstraintBase && value is bool) {
          object.invertDirection = value;
        }
        break;
      case IKConstraintBase.parentBoneCountPropertyKey:
        if (object is IKConstraintBase && value is int) {
          object.parentBoneCount = value;
        }
        break;
      case FollowPathConstraintBase.distancePropertyKey:
        if (object is FollowPathConstraintBase && value is double) {
          object.distance = value;
        }
        break;
      case FollowPathConstraintBase.orientPropertyKey:
        if (object is FollowPathConstraintBase && value is bool) {
          object.orient = value;
        }
        break;
      case FollowPathConstraintBase.offsetPropertyKey:
        if (object is FollowPathConstraintBase && value is bool) {
          object.offset = value;
        }
        break;
      case TransformConstraintBase.originXPropertyKey:
        if (object is TransformConstraintBase && value is double) {
          object.originX = value;
        }
        break;
      case TransformConstraintBase.originYPropertyKey:
        if (object is TransformConstraintBase && value is double) {
          object.originY = value;
        }
        break;
      case WorldTransformComponentBase.opacityPropertyKey:
        if (object is WorldTransformComponentBase && value is double) {
          object.opacity = value;
        }
        break;
      case TransformComponentBase.rotationPropertyKey:
        if (object is TransformComponentBase && value is double) {
          object.rotation = value;
        }
        break;
      case TransformComponentBase.scaleXPropertyKey:
        if (object is TransformComponentBase && value is double) {
          object.scaleX = value;
        }
        break;
      case TransformComponentBase.scaleYPropertyKey:
        if (object is TransformComponentBase && value is double) {
          object.scaleY = value;
        }
        break;
      case NodeBase.xPropertyKey:
        if (object is NodeBase && value is double) {
          object.x = value;
        }
        break;
      case NodeBase.yPropertyKey:
        if (object is NodeBase && value is double) {
          object.y = value;
        }
        break;
      case DrawableBase.blendModeValuePropertyKey:
        if (object is DrawableBase && value is int) {
          object.blendModeValue = value;
        }
        break;
      case DrawableBase.drawableFlagsPropertyKey:
        if (object is DrawableBase && value is int) {
          object.drawableFlags = value;
        }
        break;
      case NestedArtboardBase.artboardIdPropertyKey:
        if (object is NestedArtboardBase && value is int) {
          object.artboardId = value;
        }
        break;
      case NestedAnimationBase.animationIdPropertyKey:
        if (object is NestedAnimationBase && value is int) {
          object.animationId = value;
        }
        break;
      case SoloBase.activeComponentIdPropertyKey:
        if (object is SoloBase && value is int) {
          object.activeComponentId = value;
        }
        break;
      case ListenerFireEventBase.eventIdPropertyKey:
        if (object is ListenerFireEventBase && value is int) {
          object.eventId = value;
        }
        break;
      case AnimationBase.namePropertyKey:
        if (object is AnimationBase && value is String) {
          object.name = value;
        }
        break;
      case LinearAnimationBase.fpsPropertyKey:
        if (object is LinearAnimationBase && value is int) {
          object.fps = value;
        }
        break;
      case LinearAnimationBase.durationPropertyKey:
        if (object is LinearAnimationBase && value is int) {
          object.duration = value;
        }
        break;
      case LinearAnimationBase.speedPropertyKey:
        if (object is LinearAnimationBase && value is double) {
          object.speed = value;
        }
        break;
      case LinearAnimationBase.loopValuePropertyKey:
        if (object is LinearAnimationBase && value is int) {
          object.loopValue = value;
        }
        break;
      case LinearAnimationBase.workStartPropertyKey:
        if (object is LinearAnimationBase && value is int) {
          object.workStart = value;
        }
        break;
      case LinearAnimationBase.workEndPropertyKey:
        if (object is LinearAnimationBase && value is int) {
          object.workEnd = value;
        }
        break;
      case LinearAnimationBase.enableWorkAreaPropertyKey:
        if (object is LinearAnimationBase && value is bool) {
          object.enableWorkArea = value;
        }
        break;
      case LinearAnimationBase.quantizePropertyKey:
        if (object is LinearAnimationBase && value is bool) {
          object.quantize = value;
        }
        break;
      case NestedLinearAnimationBase.mixPropertyKey:
        if (object is NestedLinearAnimationBase && value is double) {
          object.mix = value;
        }
        break;
      case NestedSimpleAnimationBase.speedPropertyKey:
        if (object is NestedSimpleAnimationBase && value is double) {
          object.speed = value;
        }
        break;
      case NestedSimpleAnimationBase.isPlayingPropertyKey:
        if (object is NestedSimpleAnimationBase && value is bool) {
          object.isPlaying = value;
        }
        break;
      case ListenerInputChangeBase.inputIdPropertyKey:
        if (object is ListenerInputChangeBase && value is int) {
          object.inputId = value;
        }
        break;
      case AdvanceableStateBase.speedPropertyKey:
        if (object is AdvanceableStateBase && value is double) {
          object.speed = value;
        }
        break;
      case AnimationStateBase.animationIdPropertyKey:
        if (object is AnimationStateBase && value is int) {
          object.animationId = value;
        }
        break;
      case NestedInputBase.inputIdPropertyKey:
        if (object is NestedInputBase && value is int) {
          object.inputId = value;
        }
        break;
      case KeyedObjectBase.objectIdPropertyKey:
        if (object is KeyedObjectBase && value is int) {
          object.objectId = value;
        }
        break;
      case BlendAnimationBase.animationIdPropertyKey:
        if (object is BlendAnimationBase && value is int) {
          object.animationId = value;
        }
        break;
      case BlendAnimationDirectBase.inputIdPropertyKey:
        if (object is BlendAnimationDirectBase && value is int) {
          object.inputId = value;
        }
        break;
      case BlendAnimationDirectBase.mixValuePropertyKey:
        if (object is BlendAnimationDirectBase && value is double) {
          object.mixValue = value;
        }
        break;
      case BlendAnimationDirectBase.blendSourcePropertyKey:
        if (object is BlendAnimationDirectBase && value is int) {
          object.blendSource = value;
        }
        break;
      case StateMachineComponentBase.namePropertyKey:
        if (object is StateMachineComponentBase && value is String) {
          object.name = value;
        }
        break;
      case StateMachineNumberBase.valuePropertyKey:
        if (object is StateMachineNumberBase && value is double) {
          object.value = value;
        }
        break;
      case CubicInterpolatorBase.x1PropertyKey:
        if (object is CubicInterpolatorBase && value is double) {
          object.x1 = value;
        }
        break;
      case CubicInterpolatorBase.y1PropertyKey:
        if (object is CubicInterpolatorBase && value is double) {
          object.y1 = value;
        }
        break;
      case CubicInterpolatorBase.x2PropertyKey:
        if (object is CubicInterpolatorBase && value is double) {
          object.x2 = value;
        }
        break;
      case CubicInterpolatorBase.y2PropertyKey:
        if (object is CubicInterpolatorBase && value is double) {
          object.y2 = value;
        }
        break;
      case TransitionConditionBase.inputIdPropertyKey:
        if (object is TransitionConditionBase && value is int) {
          object.inputId = value;
        }
        break;
      case KeyedPropertyBase.propertyKeyPropertyKey:
        if (object is KeyedPropertyBase && value is int) {
          object.propertyKey = value;
        }
        break;
      case StateMachineListenerBase.targetIdPropertyKey:
        if (object is StateMachineListenerBase && value is int) {
          object.targetId = value;
        }
        break;
      case StateMachineListenerBase.listenerTypeValuePropertyKey:
        if (object is StateMachineListenerBase && value is int) {
          object.listenerTypeValue = value;
        }
        break;
      case KeyFrameBase.framePropertyKey:
        if (object is KeyFrameBase && value is int) {
          object.frame = value;
        }
        break;
      case InterpolatingKeyFrameBase.interpolationTypePropertyKey:
        if (object is InterpolatingKeyFrameBase && value is int) {
          object.interpolationType = value;
        }
        break;
      case InterpolatingKeyFrameBase.interpolatorIdPropertyKey:
        if (object is InterpolatingKeyFrameBase && value is int) {
          object.interpolatorId = value;
        }
        break;
      case KeyFrameIdBase.valuePropertyKey:
        if (object is KeyFrameIdBase && value is int) {
          object.value = value;
        }
        break;
      case KeyFrameBoolBase.valuePropertyKey:
        if (object is KeyFrameBoolBase && value is bool) {
          object.value = value;
        }
        break;
      case ListenerBoolChangeBase.valuePropertyKey:
        if (object is ListenerBoolChangeBase && value is int) {
          object.value = value;
        }
        break;
      case ListenerAlignTargetBase.targetIdPropertyKey:
        if (object is ListenerAlignTargetBase && value is int) {
          object.targetId = value;
        }
        break;
      case TransitionValueConditionBase.opValuePropertyKey:
        if (object is TransitionValueConditionBase && value is int) {
          object.opValue = value;
        }
        break;
      case TransitionNumberConditionBase.valuePropertyKey:
        if (object is TransitionNumberConditionBase && value is double) {
          object.value = value;
        }
        break;
      case CubicInterpolatorComponentBase.x1PropertyKey:
        if (object is CubicInterpolatorComponentBase && value is double) {
          object.x1 = value;
        }
        break;
      case CubicInterpolatorComponentBase.y1PropertyKey:
        if (object is CubicInterpolatorComponentBase && value is double) {
          object.y1 = value;
        }
        break;
      case CubicInterpolatorComponentBase.x2PropertyKey:
        if (object is CubicInterpolatorComponentBase && value is double) {
          object.x2 = value;
        }
        break;
      case CubicInterpolatorComponentBase.y2PropertyKey:
        if (object is CubicInterpolatorComponentBase && value is double) {
          object.y2 = value;
        }
        break;
      case KeyFrameStringBase.valuePropertyKey:
        if (object is KeyFrameStringBase && value is String) {
          object.value = value;
        }
        break;
      case ListenerNumberChangeBase.valuePropertyKey:
        if (object is ListenerNumberChangeBase && value is double) {
          object.value = value;
        }
        break;
      case StateTransitionBase.stateToIdPropertyKey:
        if (object is StateTransitionBase && value is int) {
          object.stateToId = value;
        }
        break;
      case StateTransitionBase.flagsPropertyKey:
        if (object is StateTransitionBase && value is int) {
          object.flags = value;
        }
        break;
      case StateTransitionBase.durationPropertyKey:
        if (object is StateTransitionBase && value is int) {
          object.duration = value;
        }
        break;
      case StateTransitionBase.exitTimePropertyKey:
        if (object is StateTransitionBase && value is int) {
          object.exitTime = value;
        }
        break;
      case StateTransitionBase.interpolationTypePropertyKey:
        if (object is StateTransitionBase && value is int) {
          object.interpolationType = value;
        }
        break;
      case StateTransitionBase.interpolatorIdPropertyKey:
        if (object is StateTransitionBase && value is int) {
          object.interpolatorId = value;
        }
        break;
      case NestedBoolBase.nestedValuePropertyKey:
        if (object is NestedBoolBase && value is bool) {
          object.nestedValue = value;
        }
        break;
      case KeyFrameDoubleBase.valuePropertyKey:
        if (object is KeyFrameDoubleBase && value is double) {
          object.value = value;
        }
        break;
      case KeyFrameColorBase.valuePropertyKey:
        if (object is KeyFrameColorBase && value is int) {
          object.value = value;
        }
        break;
      case StateMachineFireEventBase.eventIdPropertyKey:
        if (object is StateMachineFireEventBase && value is int) {
          object.eventId = value;
        }
        break;
      case StateMachineFireEventBase.occursValuePropertyKey:
        if (object is StateMachineFireEventBase && value is int) {
          object.occursValue = value;
        }
        break;
      case NestedNumberBase.nestedValuePropertyKey:
        if (object is NestedNumberBase && value is double) {
          object.nestedValue = value;
        }
        break;
      case BlendAnimation1DBase.valuePropertyKey:
        if (object is BlendAnimation1DBase && value is double) {
          object.value = value;
        }
        break;
      case BlendState1DBase.inputIdPropertyKey:
        if (object is BlendState1DBase && value is int) {
          object.inputId = value;
        }
        break;
      case NestedRemapAnimationBase.timePropertyKey:
        if (object is NestedRemapAnimationBase && value is double) {
          object.time = value;
        }
        break;
      case BlendStateTransitionBase.exitBlendAnimationIdPropertyKey:
        if (object is BlendStateTransitionBase && value is int) {
          object.exitBlendAnimationId = value;
        }
        break;
      case StateMachineBoolBase.valuePropertyKey:
        if (object is StateMachineBoolBase && value is bool) {
          object.value = value;
        }
        break;
      case ShapePaintBase.isVisiblePropertyKey:
        if (object is ShapePaintBase && value is bool) {
          object.isVisible = value;
        }
        break;
      case LinearGradientBase.startXPropertyKey:
        if (object is LinearGradientBase && value is double) {
          object.startX = value;
        }
        break;
      case LinearGradientBase.startYPropertyKey:
        if (object is LinearGradientBase && value is double) {
          object.startY = value;
        }
        break;
      case LinearGradientBase.endXPropertyKey:
        if (object is LinearGradientBase && value is double) {
          object.endX = value;
        }
        break;
      case LinearGradientBase.endYPropertyKey:
        if (object is LinearGradientBase && value is double) {
          object.endY = value;
        }
        break;
      case LinearGradientBase.opacityPropertyKey:
        if (object is LinearGradientBase && value is double) {
          object.opacity = value;
        }
        break;
      case StrokeBase.thicknessPropertyKey:
        if (object is StrokeBase && value is double) {
          object.thickness = value;
        }
        break;
      case StrokeBase.capPropertyKey:
        if (object is StrokeBase && value is int) {
          object.cap = value;
        }
        break;
      case StrokeBase.joinPropertyKey:
        if (object is StrokeBase && value is int) {
          object.join = value;
        }
        break;
      case StrokeBase.transformAffectsStrokePropertyKey:
        if (object is StrokeBase && value is bool) {
          object.transformAffectsStroke = value;
        }
        break;
      case SolidColorBase.colorValuePropertyKey:
        if (object is SolidColorBase && value is int) {
          object.colorValue = value;
        }
        break;
      case GradientStopBase.colorValuePropertyKey:
        if (object is GradientStopBase && value is int) {
          object.colorValue = value;
        }
        break;
      case GradientStopBase.positionPropertyKey:
        if (object is GradientStopBase && value is double) {
          object.position = value;
        }
        break;
      case TrimPathBase.startPropertyKey:
        if (object is TrimPathBase && value is double) {
          object.start = value;
        }
        break;
      case TrimPathBase.endPropertyKey:
        if (object is TrimPathBase && value is double) {
          object.end = value;
        }
        break;
      case TrimPathBase.offsetPropertyKey:
        if (object is TrimPathBase && value is double) {
          object.offset = value;
        }
        break;
      case TrimPathBase.modeValuePropertyKey:
        if (object is TrimPathBase && value is int) {
          object.modeValue = value;
        }
        break;
      case FillBase.fillRulePropertyKey:
        if (object is FillBase && value is int) {
          object.fillRule = value;
        }
        break;
      case VertexBase.xPropertyKey:
        if (object is VertexBase && value is double) {
          object.x = value;
        }
        break;
      case VertexBase.yPropertyKey:
        if (object is VertexBase && value is double) {
          object.y = value;
        }
        break;
      case MeshVertexBase.uPropertyKey:
        if (object is MeshVertexBase && value is double) {
          object.u = value;
        }
        break;
      case MeshVertexBase.vPropertyKey:
        if (object is MeshVertexBase && value is double) {
          object.v = value;
        }
        break;
      case PathBase.pathFlagsPropertyKey:
        if (object is PathBase && value is int) {
          object.pathFlags = value;
        }
        break;
      case WeightBase.valuesPropertyKey:
        if (object is WeightBase && value is int) {
          object.values = value;
        }
        break;
      case WeightBase.indicesPropertyKey:
        if (object is WeightBase && value is int) {
          object.indices = value;
        }
        break;
      case StraightVertexBase.radiusPropertyKey:
        if (object is StraightVertexBase && value is double) {
          object.radius = value;
        }
        break;
      case CubicWeightBase.inValuesPropertyKey:
        if (object is CubicWeightBase && value is int) {
          object.inValues = value;
        }
        break;
      case CubicWeightBase.inIndicesPropertyKey:
        if (object is CubicWeightBase && value is int) {
          object.inIndices = value;
        }
        break;
      case CubicWeightBase.outValuesPropertyKey:
        if (object is CubicWeightBase && value is int) {
          object.outValues = value;
        }
        break;
      case CubicWeightBase.outIndicesPropertyKey:
        if (object is CubicWeightBase && value is int) {
          object.outIndices = value;
        }
        break;
      case CubicAsymmetricVertexBase.rotationPropertyKey:
        if (object is CubicAsymmetricVertexBase && value is double) {
          object.rotation = value;
        }
        break;
      case CubicAsymmetricVertexBase.inDistancePropertyKey:
        if (object is CubicAsymmetricVertexBase && value is double) {
          object.inDistance = value;
        }
        break;
      case CubicAsymmetricVertexBase.outDistancePropertyKey:
        if (object is CubicAsymmetricVertexBase && value is double) {
          object.outDistance = value;
        }
        break;
      case MeshBase.triangleIndexBytesPropertyKey:
        if (object is MeshBase && value is Uint8List) {
          object.triangleIndexBytes = value;
        }
        break;
      case PointsPathBase.isClosedPropertyKey:
        if (object is PointsPathBase && value is bool) {
          object.isClosed = value;
        }
        break;
      case ParametricPathBase.widthPropertyKey:
        if (object is ParametricPathBase && value is double) {
          object.width = value;
        }
        break;
      case ParametricPathBase.heightPropertyKey:
        if (object is ParametricPathBase && value is double) {
          object.height = value;
        }
        break;
      case ParametricPathBase.originXPropertyKey:
        if (object is ParametricPathBase && value is double) {
          object.originX = value;
        }
        break;
      case ParametricPathBase.originYPropertyKey:
        if (object is ParametricPathBase && value is double) {
          object.originY = value;
        }
        break;
      case RectangleBase.linkCornerRadiusPropertyKey:
        if (object is RectangleBase && value is bool) {
          object.linkCornerRadius = value;
        }
        break;
      case RectangleBase.cornerRadiusTLPropertyKey:
        if (object is RectangleBase && value is double) {
          object.cornerRadiusTL = value;
        }
        break;
      case RectangleBase.cornerRadiusTRPropertyKey:
        if (object is RectangleBase && value is double) {
          object.cornerRadiusTR = value;
        }
        break;
      case RectangleBase.cornerRadiusBLPropertyKey:
        if (object is RectangleBase && value is double) {
          object.cornerRadiusBL = value;
        }
        break;
      case RectangleBase.cornerRadiusBRPropertyKey:
        if (object is RectangleBase && value is double) {
          object.cornerRadiusBR = value;
        }
        break;
      case CubicMirroredVertexBase.rotationPropertyKey:
        if (object is CubicMirroredVertexBase && value is double) {
          object.rotation = value;
        }
        break;
      case CubicMirroredVertexBase.distancePropertyKey:
        if (object is CubicMirroredVertexBase && value is double) {
          object.distance = value;
        }
        break;
      case ClippingShapeBase.sourceIdPropertyKey:
        if (object is ClippingShapeBase && value is int) {
          object.sourceId = value;
        }
        break;
      case ClippingShapeBase.fillRulePropertyKey:
        if (object is ClippingShapeBase && value is int) {
          object.fillRule = value;
        }
        break;
      case ClippingShapeBase.isVisiblePropertyKey:
        if (object is ClippingShapeBase && value is bool) {
          object.isVisible = value;
        }
        break;
      case PolygonBase.pointsPropertyKey:
        if (object is PolygonBase && value is int) {
          object.points = value;
        }
        break;
      case PolygonBase.cornerRadiusPropertyKey:
        if (object is PolygonBase && value is double) {
          object.cornerRadius = value;
        }
        break;
      case StarBase.innerRadiusPropertyKey:
        if (object is StarBase && value is double) {
          object.innerRadius = value;
        }
        break;
      case ImageBase.assetIdPropertyKey:
        if (object is ImageBase && value is int) {
          object.assetId = value;
        }
        break;
      case ImageBase.originXPropertyKey:
        if (object is ImageBase && value is double) {
          object.originX = value;
        }
        break;
      case ImageBase.originYPropertyKey:
        if (object is ImageBase && value is double) {
          object.originY = value;
        }
        break;
      case CubicDetachedVertexBase.inRotationPropertyKey:
        if (object is CubicDetachedVertexBase && value is double) {
          object.inRotation = value;
        }
        break;
      case CubicDetachedVertexBase.inDistancePropertyKey:
        if (object is CubicDetachedVertexBase && value is double) {
          object.inDistance = value;
        }
        break;
      case CubicDetachedVertexBase.outRotationPropertyKey:
        if (object is CubicDetachedVertexBase && value is double) {
          object.outRotation = value;
        }
        break;
      case CubicDetachedVertexBase.outDistancePropertyKey:
        if (object is CubicDetachedVertexBase && value is double) {
          object.outDistance = value;
        }
        break;
      case DrawRulesBase.drawTargetIdPropertyKey:
        if (object is DrawRulesBase && value is int) {
          object.drawTargetId = value;
        }
        break;
      case CustomPropertyBooleanBase.propertyValuePropertyKey:
        if (object is CustomPropertyBooleanBase && value is bool) {
          object.propertyValue = value;
        }
        break;
      case ArtboardBase.clipPropertyKey:
        if (object is ArtboardBase && value is bool) {
          object.clip = value;
        }
        break;
      case ArtboardBase.widthPropertyKey:
        if (object is ArtboardBase && value is double) {
          object.width = value;
        }
        break;
      case ArtboardBase.heightPropertyKey:
        if (object is ArtboardBase && value is double) {
          object.height = value;
        }
        break;
      case ArtboardBase.xPropertyKey:
        if (object is ArtboardBase && value is double) {
          object.x = value;
        }
        break;
      case ArtboardBase.yPropertyKey:
        if (object is ArtboardBase && value is double) {
          object.y = value;
        }
        break;
      case ArtboardBase.originXPropertyKey:
        if (object is ArtboardBase && value is double) {
          object.originX = value;
        }
        break;
      case ArtboardBase.originYPropertyKey:
        if (object is ArtboardBase && value is double) {
          object.originY = value;
        }
        break;
      case ArtboardBase.defaultStateMachineIdPropertyKey:
        if (object is ArtboardBase && value is int) {
          object.defaultStateMachineId = value;
        }
        break;
      case JoystickBase.xPropertyKey:
        if (object is JoystickBase && value is double) {
          object.x = value;
        }
        break;
      case JoystickBase.yPropertyKey:
        if (object is JoystickBase && value is double) {
          object.y = value;
        }
        break;
      case JoystickBase.posXPropertyKey:
        if (object is JoystickBase && value is double) {
          object.posX = value;
        }
        break;
      case JoystickBase.posYPropertyKey:
        if (object is JoystickBase && value is double) {
          object.posY = value;
        }
        break;
      case JoystickBase.originXPropertyKey:
        if (object is JoystickBase && value is double) {
          object.originX = value;
        }
        break;
      case JoystickBase.originYPropertyKey:
        if (object is JoystickBase && value is double) {
          object.originY = value;
        }
        break;
      case JoystickBase.widthPropertyKey:
        if (object is JoystickBase && value is double) {
          object.width = value;
        }
        break;
      case JoystickBase.heightPropertyKey:
        if (object is JoystickBase && value is double) {
          object.height = value;
        }
        break;
      case JoystickBase.xIdPropertyKey:
        if (object is JoystickBase && value is int) {
          object.xId = value;
        }
        break;
      case JoystickBase.yIdPropertyKey:
        if (object is JoystickBase && value is int) {
          object.yId = value;
        }
        break;
      case JoystickBase.joystickFlagsPropertyKey:
        if (object is JoystickBase && value is int) {
          object.joystickFlags = value;
        }
        break;
      case JoystickBase.handleSourceIdPropertyKey:
        if (object is JoystickBase && value is int) {
          object.handleSourceId = value;
        }
        break;
      case OpenUrlEventBase.urlPropertyKey:
        if (object is OpenUrlEventBase && value is String) {
          object.url = value;
        }
        break;
      case OpenUrlEventBase.targetValuePropertyKey:
        if (object is OpenUrlEventBase && value is int) {
          object.targetValue = value;
        }
        break;
      case BoneBase.lengthPropertyKey:
        if (object is BoneBase && value is double) {
          object.length = value;
        }
        break;
      case RootBoneBase.xPropertyKey:
        if (object is RootBoneBase && value is double) {
          object.x = value;
        }
        break;
      case RootBoneBase.yPropertyKey:
        if (object is RootBoneBase && value is double) {
          object.y = value;
        }
        break;
      case SkinBase.xxPropertyKey:
        if (object is SkinBase && value is double) {
          object.xx = value;
        }
        break;
      case SkinBase.yxPropertyKey:
        if (object is SkinBase && value is double) {
          object.yx = value;
        }
        break;
      case SkinBase.xyPropertyKey:
        if (object is SkinBase && value is double) {
          object.xy = value;
        }
        break;
      case SkinBase.yyPropertyKey:
        if (object is SkinBase && value is double) {
          object.yy = value;
        }
        break;
      case SkinBase.txPropertyKey:
        if (object is SkinBase && value is double) {
          object.tx = value;
        }
        break;
      case SkinBase.tyPropertyKey:
        if (object is SkinBase && value is double) {
          object.ty = value;
        }
        break;
      case TendonBase.boneIdPropertyKey:
        if (object is TendonBase && value is int) {
          object.boneId = value;
        }
        break;
      case TendonBase.xxPropertyKey:
        if (object is TendonBase && value is double) {
          object.xx = value;
        }
        break;
      case TendonBase.yxPropertyKey:
        if (object is TendonBase && value is double) {
          object.yx = value;
        }
        break;
      case TendonBase.xyPropertyKey:
        if (object is TendonBase && value is double) {
          object.xy = value;
        }
        break;
      case TendonBase.yyPropertyKey:
        if (object is TendonBase && value is double) {
          object.yy = value;
        }
        break;
      case TendonBase.txPropertyKey:
        if (object is TendonBase && value is double) {
          object.tx = value;
        }
        break;
      case TendonBase.tyPropertyKey:
        if (object is TendonBase && value is double) {
          object.ty = value;
        }
        break;
      case TextModifierRangeBase.modifyFromPropertyKey:
        if (object is TextModifierRangeBase && value is double) {
          object.modifyFrom = value;
        }
        break;
      case TextModifierRangeBase.modifyToPropertyKey:
        if (object is TextModifierRangeBase && value is double) {
          object.modifyTo = value;
        }
        break;
      case TextModifierRangeBase.strengthPropertyKey:
        if (object is TextModifierRangeBase && value is double) {
          object.strength = value;
        }
        break;
      case TextModifierRangeBase.unitsValuePropertyKey:
        if (object is TextModifierRangeBase && value is int) {
          object.unitsValue = value;
        }
        break;
      case TextModifierRangeBase.typeValuePropertyKey:
        if (object is TextModifierRangeBase && value is int) {
          object.typeValue = value;
        }
        break;
      case TextModifierRangeBase.modeValuePropertyKey:
        if (object is TextModifierRangeBase && value is int) {
          object.modeValue = value;
        }
        break;
      case TextModifierRangeBase.clampPropertyKey:
        if (object is TextModifierRangeBase && value is bool) {
          object.clamp = value;
        }
        break;
      case TextModifierRangeBase.falloffFromPropertyKey:
        if (object is TextModifierRangeBase && value is double) {
          object.falloffFrom = value;
        }
        break;
      case TextModifierRangeBase.falloffToPropertyKey:
        if (object is TextModifierRangeBase && value is double) {
          object.falloffTo = value;
        }
        break;
      case TextModifierRangeBase.offsetPropertyKey:
        if (object is TextModifierRangeBase && value is double) {
          object.offset = value;
        }
        break;
      case TextModifierRangeBase.runIdPropertyKey:
        if (object is TextModifierRangeBase && value is int) {
          object.runId = value;
        }
        break;
      case TextStyleFeatureBase.tagPropertyKey:
        if (object is TextStyleFeatureBase && value is int) {
          object.tag = value;
        }
        break;
      case TextStyleFeatureBase.featureValuePropertyKey:
        if (object is TextStyleFeatureBase && value is int) {
          object.featureValue = value;
        }
        break;
      case TextVariationModifierBase.axisTagPropertyKey:
        if (object is TextVariationModifierBase && value is int) {
          object.axisTag = value;
        }
        break;
      case TextVariationModifierBase.axisValuePropertyKey:
        if (object is TextVariationModifierBase && value is double) {
          object.axisValue = value;
        }
        break;
      case TextModifierGroupBase.modifierFlagsPropertyKey:
        if (object is TextModifierGroupBase && value is int) {
          object.modifierFlags = value;
        }
        break;
      case TextModifierGroupBase.originXPropertyKey:
        if (object is TextModifierGroupBase && value is double) {
          object.originX = value;
        }
        break;
      case TextModifierGroupBase.originYPropertyKey:
        if (object is TextModifierGroupBase && value is double) {
          object.originY = value;
        }
        break;
      case TextModifierGroupBase.opacityPropertyKey:
        if (object is TextModifierGroupBase && value is double) {
          object.opacity = value;
        }
        break;
      case TextModifierGroupBase.xPropertyKey:
        if (object is TextModifierGroupBase && value is double) {
          object.x = value;
        }
        break;
      case TextModifierGroupBase.yPropertyKey:
        if (object is TextModifierGroupBase && value is double) {
          object.y = value;
        }
        break;
      case TextModifierGroupBase.rotationPropertyKey:
        if (object is TextModifierGroupBase && value is double) {
          object.rotation = value;
        }
        break;
      case TextModifierGroupBase.scaleXPropertyKey:
        if (object is TextModifierGroupBase && value is double) {
          object.scaleX = value;
        }
        break;
      case TextModifierGroupBase.scaleYPropertyKey:
        if (object is TextModifierGroupBase && value is double) {
          object.scaleY = value;
        }
        break;
      case TextStyleBase.fontSizePropertyKey:
        if (object is TextStyleBase && value is double) {
          object.fontSize = value;
        }
        break;
      case TextStyleBase.lineHeightPropertyKey:
        if (object is TextStyleBase && value is double) {
          object.lineHeight = value;
        }
        break;
      case TextStyleBase.letterSpacingPropertyKey:
        if (object is TextStyleBase && value is double) {
          object.letterSpacing = value;
        }
        break;
      case TextStyleBase.fontAssetIdPropertyKey:
        if (object is TextStyleBase && value is int) {
          object.fontAssetId = value;
        }
        break;
      case TextStyleAxisBase.tagPropertyKey:
        if (object is TextStyleAxisBase && value is int) {
          object.tag = value;
        }
        break;
      case TextStyleAxisBase.axisValuePropertyKey:
        if (object is TextStyleAxisBase && value is double) {
          object.axisValue = value;
        }
        break;
      case TextBase.alignValuePropertyKey:
        if (object is TextBase && value is int) {
          object.alignValue = value;
        }
        break;
      case TextBase.sizingValuePropertyKey:
        if (object is TextBase && value is int) {
          object.sizingValue = value;
        }
        break;
      case TextBase.overflowValuePropertyKey:
        if (object is TextBase && value is int) {
          object.overflowValue = value;
        }
        break;
      case TextBase.widthPropertyKey:
        if (object is TextBase && value is double) {
          object.width = value;
        }
        break;
      case TextBase.heightPropertyKey:
        if (object is TextBase && value is double) {
          object.height = value;
        }
        break;
      case TextBase.originXPropertyKey:
        if (object is TextBase && value is double) {
          object.originX = value;
        }
        break;
      case TextBase.originYPropertyKey:
        if (object is TextBase && value is double) {
          object.originY = value;
        }
        break;
      case TextBase.paragraphSpacingPropertyKey:
        if (object is TextBase && value is double) {
          object.paragraphSpacing = value;
        }
        break;
      case TextBase.originValuePropertyKey:
        if (object is TextBase && value is int) {
          object.originValue = value;
        }
        break;
      case TextValueRunBase.styleIdPropertyKey:
        if (object is TextValueRunBase && value is int) {
          object.styleId = value;
        }
        break;
      case TextValueRunBase.textPropertyKey:
        if (object is TextValueRunBase && value is String) {
          object.text = value;
        }
        break;
      case CustomPropertyStringBase.propertyValuePropertyKey:
        if (object is CustomPropertyStringBase && value is String) {
          object.propertyValue = value;
        }
        break;
      case AssetBase.namePropertyKey:
        if (object is AssetBase && value is String) {
          object.name = value;
        }
        break;
      case FileAssetBase.assetIdPropertyKey:
        if (object is FileAssetBase && value is int) {
          object.assetId = value;
        }
        break;
      case FileAssetBase.cdnUuidPropertyKey:
        if (object is FileAssetBase && value is Uint8List) {
          object.cdnUuid = value;
        }
        break;
      case FileAssetBase.cdnBaseUrlPropertyKey:
        if (object is FileAssetBase && value is String) {
          object.cdnBaseUrl = value;
        }
        break;
      case DrawableAssetBase.heightPropertyKey:
        if (object is DrawableAssetBase && value is double) {
          object.height = value;
        }
        break;
      case DrawableAssetBase.widthPropertyKey:
        if (object is DrawableAssetBase && value is double) {
          object.width = value;
        }
        break;
      case FileAssetContentsBase.bytesPropertyKey:
        if (object is FileAssetContentsBase && value is Uint8List) {
          object.bytes = value;
        }
        break;
    }
  }

  static CoreFieldType stringType = CoreStringType();
  static CoreFieldType uintType = CoreUintType();
  static CoreFieldType doubleType = CoreDoubleType();
  static CoreFieldType boolType = CoreBoolType();
  static CoreFieldType colorType = CoreColorType();
  static CoreFieldType bytesType = CoreBytesType();
  static CoreFieldType callbackType = CoreCallbackType();
  static CoreFieldType? coreType(int propertyKey) {
    switch (propertyKey) {
      case ComponentBase.namePropertyKey:
      case AnimationBase.namePropertyKey:
      case StateMachineComponentBase.namePropertyKey:
      case KeyFrameStringBase.valuePropertyKey:
      case OpenUrlEventBase.urlPropertyKey:
      case TextValueRunBase.textPropertyKey:
      case CustomPropertyStringBase.propertyValuePropertyKey:
      case AssetBase.namePropertyKey:
      case FileAssetBase.cdnBaseUrlPropertyKey:
        return stringType;
      case ComponentBase.parentIdPropertyKey:
      case DrawTargetBase.drawableIdPropertyKey:
      case DrawTargetBase.placementValuePropertyKey:
      case TargetedConstraintBase.targetIdPropertyKey:
      case DistanceConstraintBase.modeValuePropertyKey:
      case TransformSpaceConstraintBase.sourceSpaceValuePropertyKey:
      case TransformSpaceConstraintBase.destSpaceValuePropertyKey:
      case TransformComponentConstraintBase.minMaxSpaceValuePropertyKey:
      case IKConstraintBase.parentBoneCountPropertyKey:
      case DrawableBase.blendModeValuePropertyKey:
      case DrawableBase.drawableFlagsPropertyKey:
      case NestedArtboardBase.artboardIdPropertyKey:
      case NestedAnimationBase.animationIdPropertyKey:
      case SoloBase.activeComponentIdPropertyKey:
      case ListenerFireEventBase.eventIdPropertyKey:
      case LinearAnimationBase.fpsPropertyKey:
      case LinearAnimationBase.durationPropertyKey:
      case LinearAnimationBase.loopValuePropertyKey:
      case LinearAnimationBase.workStartPropertyKey:
      case LinearAnimationBase.workEndPropertyKey:
      case ListenerInputChangeBase.inputIdPropertyKey:
      case AnimationStateBase.animationIdPropertyKey:
      case NestedInputBase.inputIdPropertyKey:
      case KeyedObjectBase.objectIdPropertyKey:
      case BlendAnimationBase.animationIdPropertyKey:
      case BlendAnimationDirectBase.inputIdPropertyKey:
      case BlendAnimationDirectBase.blendSourcePropertyKey:
      case TransitionConditionBase.inputIdPropertyKey:
      case KeyedPropertyBase.propertyKeyPropertyKey:
      case StateMachineListenerBase.targetIdPropertyKey:
      case StateMachineListenerBase.listenerTypeValuePropertyKey:
      case KeyFrameBase.framePropertyKey:
      case InterpolatingKeyFrameBase.interpolationTypePropertyKey:
      case InterpolatingKeyFrameBase.interpolatorIdPropertyKey:
      case KeyFrameIdBase.valuePropertyKey:
      case ListenerBoolChangeBase.valuePropertyKey:
      case ListenerAlignTargetBase.targetIdPropertyKey:
      case TransitionValueConditionBase.opValuePropertyKey:
      case StateTransitionBase.stateToIdPropertyKey:
      case StateTransitionBase.flagsPropertyKey:
      case StateTransitionBase.durationPropertyKey:
      case StateTransitionBase.exitTimePropertyKey:
      case StateTransitionBase.interpolationTypePropertyKey:
      case StateTransitionBase.interpolatorIdPropertyKey:
      case StateMachineFireEventBase.eventIdPropertyKey:
      case StateMachineFireEventBase.occursValuePropertyKey:
      case BlendState1DBase.inputIdPropertyKey:
      case BlendStateTransitionBase.exitBlendAnimationIdPropertyKey:
      case StrokeBase.capPropertyKey:
      case StrokeBase.joinPropertyKey:
      case TrimPathBase.modeValuePropertyKey:
      case FillBase.fillRulePropertyKey:
      case PathBase.pathFlagsPropertyKey:
      case WeightBase.valuesPropertyKey:
      case WeightBase.indicesPropertyKey:
      case CubicWeightBase.inValuesPropertyKey:
      case CubicWeightBase.inIndicesPropertyKey:
      case CubicWeightBase.outValuesPropertyKey:
      case CubicWeightBase.outIndicesPropertyKey:
      case ClippingShapeBase.sourceIdPropertyKey:
      case ClippingShapeBase.fillRulePropertyKey:
      case PolygonBase.pointsPropertyKey:
      case ImageBase.assetIdPropertyKey:
      case DrawRulesBase.drawTargetIdPropertyKey:
      case ArtboardBase.defaultStateMachineIdPropertyKey:
      case JoystickBase.xIdPropertyKey:
      case JoystickBase.yIdPropertyKey:
      case JoystickBase.joystickFlagsPropertyKey:
      case JoystickBase.handleSourceIdPropertyKey:
      case OpenUrlEventBase.targetValuePropertyKey:
      case TendonBase.boneIdPropertyKey:
      case TextModifierRangeBase.unitsValuePropertyKey:
      case TextModifierRangeBase.typeValuePropertyKey:
      case TextModifierRangeBase.modeValuePropertyKey:
      case TextModifierRangeBase.runIdPropertyKey:
      case TextStyleFeatureBase.tagPropertyKey:
      case TextStyleFeatureBase.featureValuePropertyKey:
      case TextVariationModifierBase.axisTagPropertyKey:
      case TextModifierGroupBase.modifierFlagsPropertyKey:
      case TextStyleBase.fontAssetIdPropertyKey:
      case TextStyleAxisBase.tagPropertyKey:
      case TextBase.alignValuePropertyKey:
      case TextBase.sizingValuePropertyKey:
      case TextBase.overflowValuePropertyKey:
      case TextBase.originValuePropertyKey:
      case TextValueRunBase.styleIdPropertyKey:
      case FileAssetBase.assetIdPropertyKey:
        return uintType;
      case CustomPropertyNumberBase.propertyValuePropertyKey:
      case ConstraintBase.strengthPropertyKey:
      case DistanceConstraintBase.distancePropertyKey:
      case TransformComponentConstraintBase.copyFactorPropertyKey:
      case TransformComponentConstraintBase.minValuePropertyKey:
      case TransformComponentConstraintBase.maxValuePropertyKey:
      case TransformComponentConstraintYBase.copyFactorYPropertyKey:
      case TransformComponentConstraintYBase.minValueYPropertyKey:
      case TransformComponentConstraintYBase.maxValueYPropertyKey:
      case FollowPathConstraintBase.distancePropertyKey:
      case TransformConstraintBase.originXPropertyKey:
      case TransformConstraintBase.originYPropertyKey:
      case WorldTransformComponentBase.opacityPropertyKey:
      case TransformComponentBase.rotationPropertyKey:
      case TransformComponentBase.scaleXPropertyKey:
      case TransformComponentBase.scaleYPropertyKey:
      case NodeBase.xPropertyKey:
      case NodeBase.yPropertyKey:
      case LinearAnimationBase.speedPropertyKey:
      case NestedLinearAnimationBase.mixPropertyKey:
      case NestedSimpleAnimationBase.speedPropertyKey:
      case AdvanceableStateBase.speedPropertyKey:
      case BlendAnimationDirectBase.mixValuePropertyKey:
      case StateMachineNumberBase.valuePropertyKey:
      case CubicInterpolatorBase.x1PropertyKey:
      case CubicInterpolatorBase.y1PropertyKey:
      case CubicInterpolatorBase.x2PropertyKey:
      case CubicInterpolatorBase.y2PropertyKey:
      case TransitionNumberConditionBase.valuePropertyKey:
      case CubicInterpolatorComponentBase.x1PropertyKey:
      case CubicInterpolatorComponentBase.y1PropertyKey:
      case CubicInterpolatorComponentBase.x2PropertyKey:
      case CubicInterpolatorComponentBase.y2PropertyKey:
      case ListenerNumberChangeBase.valuePropertyKey:
      case KeyFrameDoubleBase.valuePropertyKey:
      case NestedNumberBase.nestedValuePropertyKey:
      case BlendAnimation1DBase.valuePropertyKey:
      case NestedRemapAnimationBase.timePropertyKey:
      case LinearGradientBase.startXPropertyKey:
      case LinearGradientBase.startYPropertyKey:
      case LinearGradientBase.endXPropertyKey:
      case LinearGradientBase.endYPropertyKey:
      case LinearGradientBase.opacityPropertyKey:
      case StrokeBase.thicknessPropertyKey:
      case GradientStopBase.positionPropertyKey:
      case TrimPathBase.startPropertyKey:
      case TrimPathBase.endPropertyKey:
      case TrimPathBase.offsetPropertyKey:
      case VertexBase.xPropertyKey:
      case VertexBase.yPropertyKey:
      case MeshVertexBase.uPropertyKey:
      case MeshVertexBase.vPropertyKey:
      case StraightVertexBase.radiusPropertyKey:
      case CubicAsymmetricVertexBase.rotationPropertyKey:
      case CubicAsymmetricVertexBase.inDistancePropertyKey:
      case CubicAsymmetricVertexBase.outDistancePropertyKey:
      case ParametricPathBase.widthPropertyKey:
      case ParametricPathBase.heightPropertyKey:
      case ParametricPathBase.originXPropertyKey:
      case ParametricPathBase.originYPropertyKey:
      case RectangleBase.cornerRadiusTLPropertyKey:
      case RectangleBase.cornerRadiusTRPropertyKey:
      case RectangleBase.cornerRadiusBLPropertyKey:
      case RectangleBase.cornerRadiusBRPropertyKey:
      case CubicMirroredVertexBase.rotationPropertyKey:
      case CubicMirroredVertexBase.distancePropertyKey:
      case PolygonBase.cornerRadiusPropertyKey:
      case StarBase.innerRadiusPropertyKey:
      case ImageBase.originXPropertyKey:
      case ImageBase.originYPropertyKey:
      case CubicDetachedVertexBase.inRotationPropertyKey:
      case CubicDetachedVertexBase.inDistancePropertyKey:
      case CubicDetachedVertexBase.outRotationPropertyKey:
      case CubicDetachedVertexBase.outDistancePropertyKey:
      case ArtboardBase.widthPropertyKey:
      case ArtboardBase.heightPropertyKey:
      case ArtboardBase.xPropertyKey:
      case ArtboardBase.yPropertyKey:
      case ArtboardBase.originXPropertyKey:
      case ArtboardBase.originYPropertyKey:
      case JoystickBase.xPropertyKey:
      case JoystickBase.yPropertyKey:
      case JoystickBase.posXPropertyKey:
      case JoystickBase.posYPropertyKey:
      case JoystickBase.originXPropertyKey:
      case JoystickBase.originYPropertyKey:
      case JoystickBase.widthPropertyKey:
      case JoystickBase.heightPropertyKey:
      case BoneBase.lengthPropertyKey:
      case RootBoneBase.xPropertyKey:
      case RootBoneBase.yPropertyKey:
      case SkinBase.xxPropertyKey:
      case SkinBase.yxPropertyKey:
      case SkinBase.xyPropertyKey:
      case SkinBase.yyPropertyKey:
      case SkinBase.txPropertyKey:
      case SkinBase.tyPropertyKey:
      case TendonBase.xxPropertyKey:
      case TendonBase.yxPropertyKey:
      case TendonBase.xyPropertyKey:
      case TendonBase.yyPropertyKey:
      case TendonBase.txPropertyKey:
      case TendonBase.tyPropertyKey:
      case TextModifierRangeBase.modifyFromPropertyKey:
      case TextModifierRangeBase.modifyToPropertyKey:
      case TextModifierRangeBase.strengthPropertyKey:
      case TextModifierRangeBase.falloffFromPropertyKey:
      case TextModifierRangeBase.falloffToPropertyKey:
      case TextModifierRangeBase.offsetPropertyKey:
      case TextVariationModifierBase.axisValuePropertyKey:
      case TextModifierGroupBase.originXPropertyKey:
      case TextModifierGroupBase.originYPropertyKey:
      case TextModifierGroupBase.opacityPropertyKey:
      case TextModifierGroupBase.xPropertyKey:
      case TextModifierGroupBase.yPropertyKey:
      case TextModifierGroupBase.rotationPropertyKey:
      case TextModifierGroupBase.scaleXPropertyKey:
      case TextModifierGroupBase.scaleYPropertyKey:
      case TextStyleBase.fontSizePropertyKey:
      case TextStyleBase.lineHeightPropertyKey:
      case TextStyleBase.letterSpacingPropertyKey:
      case TextStyleAxisBase.axisValuePropertyKey:
      case TextBase.widthPropertyKey:
      case TextBase.heightPropertyKey:
      case TextBase.originXPropertyKey:
      case TextBase.originYPropertyKey:
      case TextBase.paragraphSpacingPropertyKey:
      case DrawableAssetBase.heightPropertyKey:
      case DrawableAssetBase.widthPropertyKey:
        return doubleType;
      case TransformComponentConstraintBase.offsetPropertyKey:
      case TransformComponentConstraintBase.doesCopyPropertyKey:
      case TransformComponentConstraintBase.minPropertyKey:
      case TransformComponentConstraintBase.maxPropertyKey:
      case TransformComponentConstraintYBase.doesCopyYPropertyKey:
      case TransformComponentConstraintYBase.minYPropertyKey:
      case TransformComponentConstraintYBase.maxYPropertyKey:
      case IKConstraintBase.invertDirectionPropertyKey:
      case FollowPathConstraintBase.orientPropertyKey:
      case FollowPathConstraintBase.offsetPropertyKey:
      case LinearAnimationBase.enableWorkAreaPropertyKey:
      case LinearAnimationBase.quantizePropertyKey:
      case NestedSimpleAnimationBase.isPlayingPropertyKey:
      case KeyFrameBoolBase.valuePropertyKey:
      case NestedBoolBase.nestedValuePropertyKey:
      case StateMachineBoolBase.valuePropertyKey:
      case ShapePaintBase.isVisiblePropertyKey:
      case StrokeBase.transformAffectsStrokePropertyKey:
      case PointsPathBase.isClosedPropertyKey:
      case RectangleBase.linkCornerRadiusPropertyKey:
      case ClippingShapeBase.isVisiblePropertyKey:
      case CustomPropertyBooleanBase.propertyValuePropertyKey:
      case ArtboardBase.clipPropertyKey:
      case TextModifierRangeBase.clampPropertyKey:
        return boolType;
      case KeyFrameColorBase.valuePropertyKey:
      case SolidColorBase.colorValuePropertyKey:
      case GradientStopBase.colorValuePropertyKey:
        return colorType;
      case MeshBase.triangleIndexBytesPropertyKey:
      case FileAssetBase.cdnUuidPropertyKey:
      case FileAssetContentsBase.bytesPropertyKey:
        return bytesType;
      case EventBase.triggerPropertyKey:
        return callbackType;
      default:
        return null;
    }
  }

  static bool isCallback(int propertyKey) {
    switch (propertyKey) {
      case EventBase.triggerPropertyKey:
        return true;
      default:
        return false;
    }
  }

  static String getString(Core object, int propertyKey) {
    switch (propertyKey) {
      case ComponentBase.namePropertyKey:
        return (object as ComponentBase).name;
      case AnimationBase.namePropertyKey:
        return (object as AnimationBase).name;
      case StateMachineComponentBase.namePropertyKey:
        return (object as StateMachineComponentBase).name;
      case KeyFrameStringBase.valuePropertyKey:
        return (object as KeyFrameStringBase).value;
      case OpenUrlEventBase.urlPropertyKey:
        return (object as OpenUrlEventBase).url;
      case TextValueRunBase.textPropertyKey:
        return (object as TextValueRunBase).text;
      case CustomPropertyStringBase.propertyValuePropertyKey:
        return (object as CustomPropertyStringBase).propertyValue;
      case AssetBase.namePropertyKey:
        return (object as AssetBase).name;
      case FileAssetBase.cdnBaseUrlPropertyKey:
        return (object as FileAssetBase).cdnBaseUrl;
    }
    return '';
  }

  static int getUint(Core object, int propertyKey) {
    switch (propertyKey) {
      case ComponentBase.parentIdPropertyKey:
        return (object as ComponentBase).parentId;
      case DrawTargetBase.drawableIdPropertyKey:
        return (object as DrawTargetBase).drawableId;
      case DrawTargetBase.placementValuePropertyKey:
        return (object as DrawTargetBase).placementValue;
      case TargetedConstraintBase.targetIdPropertyKey:
        return (object as TargetedConstraintBase).targetId;
      case DistanceConstraintBase.modeValuePropertyKey:
        return (object as DistanceConstraintBase).modeValue;
      case TransformSpaceConstraintBase.sourceSpaceValuePropertyKey:
        return (object as TransformSpaceConstraintBase).sourceSpaceValue;
      case TransformSpaceConstraintBase.destSpaceValuePropertyKey:
        return (object as TransformSpaceConstraintBase).destSpaceValue;
      case TransformComponentConstraintBase.minMaxSpaceValuePropertyKey:
        return (object as TransformComponentConstraintBase).minMaxSpaceValue;
      case IKConstraintBase.parentBoneCountPropertyKey:
        return (object as IKConstraintBase).parentBoneCount;
      case DrawableBase.blendModeValuePropertyKey:
        return (object as DrawableBase).blendModeValue;
      case DrawableBase.drawableFlagsPropertyKey:
        return (object as DrawableBase).drawableFlags;
      case NestedArtboardBase.artboardIdPropertyKey:
        return (object as NestedArtboardBase).artboardId;
      case NestedAnimationBase.animationIdPropertyKey:
        return (object as NestedAnimationBase).animationId;
      case SoloBase.activeComponentIdPropertyKey:
        return (object as SoloBase).activeComponentId;
      case ListenerFireEventBase.eventIdPropertyKey:
        return (object as ListenerFireEventBase).eventId;
      case LinearAnimationBase.fpsPropertyKey:
        return (object as LinearAnimationBase).fps;
      case LinearAnimationBase.durationPropertyKey:
        return (object as LinearAnimationBase).duration;
      case LinearAnimationBase.loopValuePropertyKey:
        return (object as LinearAnimationBase).loopValue;
      case LinearAnimationBase.workStartPropertyKey:
        return (object as LinearAnimationBase).workStart;
      case LinearAnimationBase.workEndPropertyKey:
        return (object as LinearAnimationBase).workEnd;
      case ListenerInputChangeBase.inputIdPropertyKey:
        return (object as ListenerInputChangeBase).inputId;
      case AnimationStateBase.animationIdPropertyKey:
        return (object as AnimationStateBase).animationId;
      case NestedInputBase.inputIdPropertyKey:
        return (object as NestedInputBase).inputId;
      case KeyedObjectBase.objectIdPropertyKey:
        return (object as KeyedObjectBase).objectId;
      case BlendAnimationBase.animationIdPropertyKey:
        return (object as BlendAnimationBase).animationId;
      case BlendAnimationDirectBase.inputIdPropertyKey:
        return (object as BlendAnimationDirectBase).inputId;
      case BlendAnimationDirectBase.blendSourcePropertyKey:
        return (object as BlendAnimationDirectBase).blendSource;
      case TransitionConditionBase.inputIdPropertyKey:
        return (object as TransitionConditionBase).inputId;
      case KeyedPropertyBase.propertyKeyPropertyKey:
        return (object as KeyedPropertyBase).propertyKey;
      case StateMachineListenerBase.targetIdPropertyKey:
        return (object as StateMachineListenerBase).targetId;
      case StateMachineListenerBase.listenerTypeValuePropertyKey:
        return (object as StateMachineListenerBase).listenerTypeValue;
      case KeyFrameBase.framePropertyKey:
        return (object as KeyFrameBase).frame;
      case InterpolatingKeyFrameBase.interpolationTypePropertyKey:
        return (object as InterpolatingKeyFrameBase).interpolationType;
      case InterpolatingKeyFrameBase.interpolatorIdPropertyKey:
        return (object as InterpolatingKeyFrameBase).interpolatorId;
      case KeyFrameIdBase.valuePropertyKey:
        return (object as KeyFrameIdBase).value;
      case ListenerBoolChangeBase.valuePropertyKey:
        return (object as ListenerBoolChangeBase).value;
      case ListenerAlignTargetBase.targetIdPropertyKey:
        return (object as ListenerAlignTargetBase).targetId;
      case TransitionValueConditionBase.opValuePropertyKey:
        return (object as TransitionValueConditionBase).opValue;
      case StateTransitionBase.stateToIdPropertyKey:
        return (object as StateTransitionBase).stateToId;
      case StateTransitionBase.flagsPropertyKey:
        return (object as StateTransitionBase).flags;
      case StateTransitionBase.durationPropertyKey:
        return (object as StateTransitionBase).duration;
      case StateTransitionBase.exitTimePropertyKey:
        return (object as StateTransitionBase).exitTime;
      case StateTransitionBase.interpolationTypePropertyKey:
        return (object as StateTransitionBase).interpolationType;
      case StateTransitionBase.interpolatorIdPropertyKey:
        return (object as StateTransitionBase).interpolatorId;
      case StateMachineFireEventBase.eventIdPropertyKey:
        return (object as StateMachineFireEventBase).eventId;
      case StateMachineFireEventBase.occursValuePropertyKey:
        return (object as StateMachineFireEventBase).occursValue;
      case BlendState1DBase.inputIdPropertyKey:
        return (object as BlendState1DBase).inputId;
      case BlendStateTransitionBase.exitBlendAnimationIdPropertyKey:
        return (object as BlendStateTransitionBase).exitBlendAnimationId;
      case StrokeBase.capPropertyKey:
        return (object as StrokeBase).cap;
      case StrokeBase.joinPropertyKey:
        return (object as StrokeBase).join;
      case TrimPathBase.modeValuePropertyKey:
        return (object as TrimPathBase).modeValue;
      case FillBase.fillRulePropertyKey:
        return (object as FillBase).fillRule;
      case PathBase.pathFlagsPropertyKey:
        return (object as PathBase).pathFlags;
      case WeightBase.valuesPropertyKey:
        return (object as WeightBase).values;
      case WeightBase.indicesPropertyKey:
        return (object as WeightBase).indices;
      case CubicWeightBase.inValuesPropertyKey:
        return (object as CubicWeightBase).inValues;
      case CubicWeightBase.inIndicesPropertyKey:
        return (object as CubicWeightBase).inIndices;
      case CubicWeightBase.outValuesPropertyKey:
        return (object as CubicWeightBase).outValues;
      case CubicWeightBase.outIndicesPropertyKey:
        return (object as CubicWeightBase).outIndices;
      case ClippingShapeBase.sourceIdPropertyKey:
        return (object as ClippingShapeBase).sourceId;
      case ClippingShapeBase.fillRulePropertyKey:
        return (object as ClippingShapeBase).fillRule;
      case PolygonBase.pointsPropertyKey:
        return (object as PolygonBase).points;
      case ImageBase.assetIdPropertyKey:
        return (object as ImageBase).assetId;
      case DrawRulesBase.drawTargetIdPropertyKey:
        return (object as DrawRulesBase).drawTargetId;
      case ArtboardBase.defaultStateMachineIdPropertyKey:
        return (object as ArtboardBase).defaultStateMachineId;
      case JoystickBase.xIdPropertyKey:
        return (object as JoystickBase).xId;
      case JoystickBase.yIdPropertyKey:
        return (object as JoystickBase).yId;
      case JoystickBase.joystickFlagsPropertyKey:
        return (object as JoystickBase).joystickFlags;
      case JoystickBase.handleSourceIdPropertyKey:
        return (object as JoystickBase).handleSourceId;
      case OpenUrlEventBase.targetValuePropertyKey:
        return (object as OpenUrlEventBase).targetValue;
      case TendonBase.boneIdPropertyKey:
        return (object as TendonBase).boneId;
      case TextModifierRangeBase.unitsValuePropertyKey:
        return (object as TextModifierRangeBase).unitsValue;
      case TextModifierRangeBase.typeValuePropertyKey:
        return (object as TextModifierRangeBase).typeValue;
      case TextModifierRangeBase.modeValuePropertyKey:
        return (object as TextModifierRangeBase).modeValue;
      case TextModifierRangeBase.runIdPropertyKey:
        return (object as TextModifierRangeBase).runId;
      case TextStyleFeatureBase.tagPropertyKey:
        return (object as TextStyleFeatureBase).tag;
      case TextStyleFeatureBase.featureValuePropertyKey:
        return (object as TextStyleFeatureBase).featureValue;
      case TextVariationModifierBase.axisTagPropertyKey:
        return (object as TextVariationModifierBase).axisTag;
      case TextModifierGroupBase.modifierFlagsPropertyKey:
        return (object as TextModifierGroupBase).modifierFlags;
      case TextStyleBase.fontAssetIdPropertyKey:
        return (object as TextStyleBase).fontAssetId;
      case TextStyleAxisBase.tagPropertyKey:
        return (object as TextStyleAxisBase).tag;
      case TextBase.alignValuePropertyKey:
        return (object as TextBase).alignValue;
      case TextBase.sizingValuePropertyKey:
        return (object as TextBase).sizingValue;
      case TextBase.overflowValuePropertyKey:
        return (object as TextBase).overflowValue;
      case TextBase.originValuePropertyKey:
        return (object as TextBase).originValue;
      case TextValueRunBase.styleIdPropertyKey:
        return (object as TextValueRunBase).styleId;
      case FileAssetBase.assetIdPropertyKey:
        return (object as FileAssetBase).assetId;
    }
    return 0;
  }

  static double getDouble(Core object, int propertyKey) {
    switch (propertyKey) {
      case CustomPropertyNumberBase.propertyValuePropertyKey:
        return (object as CustomPropertyNumberBase).propertyValue;
      case ConstraintBase.strengthPropertyKey:
        return (object as ConstraintBase).strength;
      case DistanceConstraintBase.distancePropertyKey:
        return (object as DistanceConstraintBase).distance;
      case TransformComponentConstraintBase.copyFactorPropertyKey:
        return (object as TransformComponentConstraintBase).copyFactor;
      case TransformComponentConstraintBase.minValuePropertyKey:
        return (object as TransformComponentConstraintBase).minValue;
      case TransformComponentConstraintBase.maxValuePropertyKey:
        return (object as TransformComponentConstraintBase).maxValue;
      case TransformComponentConstraintYBase.copyFactorYPropertyKey:
        return (object as TransformComponentConstraintYBase).copyFactorY;
      case TransformComponentConstraintYBase.minValueYPropertyKey:
        return (object as TransformComponentConstraintYBase).minValueY;
      case TransformComponentConstraintYBase.maxValueYPropertyKey:
        return (object as TransformComponentConstraintYBase).maxValueY;
      case FollowPathConstraintBase.distancePropertyKey:
        return (object as FollowPathConstraintBase).distance;
      case TransformConstraintBase.originXPropertyKey:
        return (object as TransformConstraintBase).originX;
      case TransformConstraintBase.originYPropertyKey:
        return (object as TransformConstraintBase).originY;
      case WorldTransformComponentBase.opacityPropertyKey:
        return (object as WorldTransformComponentBase).opacity;
      case TransformComponentBase.rotationPropertyKey:
        return (object as TransformComponentBase).rotation;
      case TransformComponentBase.scaleXPropertyKey:
        return (object as TransformComponentBase).scaleX;
      case TransformComponentBase.scaleYPropertyKey:
        return (object as TransformComponentBase).scaleY;
      case NodeBase.xPropertyKey:
        return (object as NodeBase).x;
      case NodeBase.yPropertyKey:
        return (object as NodeBase).y;
      case LinearAnimationBase.speedPropertyKey:
        return (object as LinearAnimationBase).speed;
      case NestedLinearAnimationBase.mixPropertyKey:
        return (object as NestedLinearAnimationBase).mix;
      case NestedSimpleAnimationBase.speedPropertyKey:
        return (object as NestedSimpleAnimationBase).speed;
      case AdvanceableStateBase.speedPropertyKey:
        return (object as AdvanceableStateBase).speed;
      case BlendAnimationDirectBase.mixValuePropertyKey:
        return (object as BlendAnimationDirectBase).mixValue;
      case StateMachineNumberBase.valuePropertyKey:
        return (object as StateMachineNumberBase).value;
      case CubicInterpolatorBase.x1PropertyKey:
        return (object as CubicInterpolatorBase).x1;
      case CubicInterpolatorBase.y1PropertyKey:
        return (object as CubicInterpolatorBase).y1;
      case CubicInterpolatorBase.x2PropertyKey:
        return (object as CubicInterpolatorBase).x2;
      case CubicInterpolatorBase.y2PropertyKey:
        return (object as CubicInterpolatorBase).y2;
      case TransitionNumberConditionBase.valuePropertyKey:
        return (object as TransitionNumberConditionBase).value;
      case CubicInterpolatorComponentBase.x1PropertyKey:
        return (object as CubicInterpolatorComponentBase).x1;
      case CubicInterpolatorComponentBase.y1PropertyKey:
        return (object as CubicInterpolatorComponentBase).y1;
      case CubicInterpolatorComponentBase.x2PropertyKey:
        return (object as CubicInterpolatorComponentBase).x2;
      case CubicInterpolatorComponentBase.y2PropertyKey:
        return (object as CubicInterpolatorComponentBase).y2;
      case ListenerNumberChangeBase.valuePropertyKey:
        return (object as ListenerNumberChangeBase).value;
      case KeyFrameDoubleBase.valuePropertyKey:
        return (object as KeyFrameDoubleBase).value;
      case NestedNumberBase.nestedValuePropertyKey:
        return (object as NestedNumberBase).nestedValue;
      case BlendAnimation1DBase.valuePropertyKey:
        return (object as BlendAnimation1DBase).value;
      case NestedRemapAnimationBase.timePropertyKey:
        return (object as NestedRemapAnimationBase).time;
      case LinearGradientBase.startXPropertyKey:
        return (object as LinearGradientBase).startX;
      case LinearGradientBase.startYPropertyKey:
        return (object as LinearGradientBase).startY;
      case LinearGradientBase.endXPropertyKey:
        return (object as LinearGradientBase).endX;
      case LinearGradientBase.endYPropertyKey:
        return (object as LinearGradientBase).endY;
      case LinearGradientBase.opacityPropertyKey:
        return (object as LinearGradientBase).opacity;
      case StrokeBase.thicknessPropertyKey:
        return (object as StrokeBase).thickness;
      case GradientStopBase.positionPropertyKey:
        return (object as GradientStopBase).position;
      case TrimPathBase.startPropertyKey:
        return (object as TrimPathBase).start;
      case TrimPathBase.endPropertyKey:
        return (object as TrimPathBase).end;
      case TrimPathBase.offsetPropertyKey:
        return (object as TrimPathBase).offset;
      case VertexBase.xPropertyKey:
        return (object as VertexBase).x;
      case VertexBase.yPropertyKey:
        return (object as VertexBase).y;
      case MeshVertexBase.uPropertyKey:
        return (object as MeshVertexBase).u;
      case MeshVertexBase.vPropertyKey:
        return (object as MeshVertexBase).v;
      case StraightVertexBase.radiusPropertyKey:
        return (object as StraightVertexBase).radius;
      case CubicAsymmetricVertexBase.rotationPropertyKey:
        return (object as CubicAsymmetricVertexBase).rotation;
      case CubicAsymmetricVertexBase.inDistancePropertyKey:
        return (object as CubicAsymmetricVertexBase).inDistance;
      case CubicAsymmetricVertexBase.outDistancePropertyKey:
        return (object as CubicAsymmetricVertexBase).outDistance;
      case ParametricPathBase.widthPropertyKey:
        return (object as ParametricPathBase).width;
      case ParametricPathBase.heightPropertyKey:
        return (object as ParametricPathBase).height;
      case ParametricPathBase.originXPropertyKey:
        return (object as ParametricPathBase).originX;
      case ParametricPathBase.originYPropertyKey:
        return (object as ParametricPathBase).originY;
      case RectangleBase.cornerRadiusTLPropertyKey:
        return (object as RectangleBase).cornerRadiusTL;
      case RectangleBase.cornerRadiusTRPropertyKey:
        return (object as RectangleBase).cornerRadiusTR;
      case RectangleBase.cornerRadiusBLPropertyKey:
        return (object as RectangleBase).cornerRadiusBL;
      case RectangleBase.cornerRadiusBRPropertyKey:
        return (object as RectangleBase).cornerRadiusBR;
      case CubicMirroredVertexBase.rotationPropertyKey:
        return (object as CubicMirroredVertexBase).rotation;
      case CubicMirroredVertexBase.distancePropertyKey:
        return (object as CubicMirroredVertexBase).distance;
      case PolygonBase.cornerRadiusPropertyKey:
        return (object as PolygonBase).cornerRadius;
      case StarBase.innerRadiusPropertyKey:
        return (object as StarBase).innerRadius;
      case ImageBase.originXPropertyKey:
        return (object as ImageBase).originX;
      case ImageBase.originYPropertyKey:
        return (object as ImageBase).originY;
      case CubicDetachedVertexBase.inRotationPropertyKey:
        return (object as CubicDetachedVertexBase).inRotation;
      case CubicDetachedVertexBase.inDistancePropertyKey:
        return (object as CubicDetachedVertexBase).inDistance;
      case CubicDetachedVertexBase.outRotationPropertyKey:
        return (object as CubicDetachedVertexBase).outRotation;
      case CubicDetachedVertexBase.outDistancePropertyKey:
        return (object as CubicDetachedVertexBase).outDistance;
      case ArtboardBase.widthPropertyKey:
        return (object as ArtboardBase).width;
      case ArtboardBase.heightPropertyKey:
        return (object as ArtboardBase).height;
      case ArtboardBase.xPropertyKey:
        return (object as ArtboardBase).x;
      case ArtboardBase.yPropertyKey:
        return (object as ArtboardBase).y;
      case ArtboardBase.originXPropertyKey:
        return (object as ArtboardBase).originX;
      case ArtboardBase.originYPropertyKey:
        return (object as ArtboardBase).originY;
      case JoystickBase.xPropertyKey:
        return (object as JoystickBase).x;
      case JoystickBase.yPropertyKey:
        return (object as JoystickBase).y;
      case JoystickBase.posXPropertyKey:
        return (object as JoystickBase).posX;
      case JoystickBase.posYPropertyKey:
        return (object as JoystickBase).posY;
      case JoystickBase.originXPropertyKey:
        return (object as JoystickBase).originX;
      case JoystickBase.originYPropertyKey:
        return (object as JoystickBase).originY;
      case JoystickBase.widthPropertyKey:
        return (object as JoystickBase).width;
      case JoystickBase.heightPropertyKey:
        return (object as JoystickBase).height;
      case BoneBase.lengthPropertyKey:
        return (object as BoneBase).length;
      case RootBoneBase.xPropertyKey:
        return (object as RootBoneBase).x;
      case RootBoneBase.yPropertyKey:
        return (object as RootBoneBase).y;
      case SkinBase.xxPropertyKey:
        return (object as SkinBase).xx;
      case SkinBase.yxPropertyKey:
        return (object as SkinBase).yx;
      case SkinBase.xyPropertyKey:
        return (object as SkinBase).xy;
      case SkinBase.yyPropertyKey:
        return (object as SkinBase).yy;
      case SkinBase.txPropertyKey:
        return (object as SkinBase).tx;
      case SkinBase.tyPropertyKey:
        return (object as SkinBase).ty;
      case TendonBase.xxPropertyKey:
        return (object as TendonBase).xx;
      case TendonBase.yxPropertyKey:
        return (object as TendonBase).yx;
      case TendonBase.xyPropertyKey:
        return (object as TendonBase).xy;
      case TendonBase.yyPropertyKey:
        return (object as TendonBase).yy;
      case TendonBase.txPropertyKey:
        return (object as TendonBase).tx;
      case TendonBase.tyPropertyKey:
        return (object as TendonBase).ty;
      case TextModifierRangeBase.modifyFromPropertyKey:
        return (object as TextModifierRangeBase).modifyFrom;
      case TextModifierRangeBase.modifyToPropertyKey:
        return (object as TextModifierRangeBase).modifyTo;
      case TextModifierRangeBase.strengthPropertyKey:
        return (object as TextModifierRangeBase).strength;
      case TextModifierRangeBase.falloffFromPropertyKey:
        return (object as TextModifierRangeBase).falloffFrom;
      case TextModifierRangeBase.falloffToPropertyKey:
        return (object as TextModifierRangeBase).falloffTo;
      case TextModifierRangeBase.offsetPropertyKey:
        return (object as TextModifierRangeBase).offset;
      case TextVariationModifierBase.axisValuePropertyKey:
        return (object as TextVariationModifierBase).axisValue;
      case TextModifierGroupBase.originXPropertyKey:
        return (object as TextModifierGroupBase).originX;
      case TextModifierGroupBase.originYPropertyKey:
        return (object as TextModifierGroupBase).originY;
      case TextModifierGroupBase.opacityPropertyKey:
        return (object as TextModifierGroupBase).opacity;
      case TextModifierGroupBase.xPropertyKey:
        return (object as TextModifierGroupBase).x;
      case TextModifierGroupBase.yPropertyKey:
        return (object as TextModifierGroupBase).y;
      case TextModifierGroupBase.rotationPropertyKey:
        return (object as TextModifierGroupBase).rotation;
      case TextModifierGroupBase.scaleXPropertyKey:
        return (object as TextModifierGroupBase).scaleX;
      case TextModifierGroupBase.scaleYPropertyKey:
        return (object as TextModifierGroupBase).scaleY;
      case TextStyleBase.fontSizePropertyKey:
        return (object as TextStyleBase).fontSize;
      case TextStyleBase.lineHeightPropertyKey:
        return (object as TextStyleBase).lineHeight;
      case TextStyleBase.letterSpacingPropertyKey:
        return (object as TextStyleBase).letterSpacing;
      case TextStyleAxisBase.axisValuePropertyKey:
        return (object as TextStyleAxisBase).axisValue;
      case TextBase.widthPropertyKey:
        return (object as TextBase).width;
      case TextBase.heightPropertyKey:
        return (object as TextBase).height;
      case TextBase.originXPropertyKey:
        return (object as TextBase).originX;
      case TextBase.originYPropertyKey:
        return (object as TextBase).originY;
      case TextBase.paragraphSpacingPropertyKey:
        return (object as TextBase).paragraphSpacing;
      case DrawableAssetBase.heightPropertyKey:
        return (object as DrawableAssetBase).height;
      case DrawableAssetBase.widthPropertyKey:
        return (object as DrawableAssetBase).width;
    }
    return 0.0;
  }

  static bool getBool(Core object, int propertyKey) {
    switch (propertyKey) {
      case TransformComponentConstraintBase.offsetPropertyKey:
        return (object as TransformComponentConstraintBase).offset;
      case TransformComponentConstraintBase.doesCopyPropertyKey:
        return (object as TransformComponentConstraintBase).doesCopy;
      case TransformComponentConstraintBase.minPropertyKey:
        return (object as TransformComponentConstraintBase).min;
      case TransformComponentConstraintBase.maxPropertyKey:
        return (object as TransformComponentConstraintBase).max;
      case TransformComponentConstraintYBase.doesCopyYPropertyKey:
        return (object as TransformComponentConstraintYBase).doesCopyY;
      case TransformComponentConstraintYBase.minYPropertyKey:
        return (object as TransformComponentConstraintYBase).minY;
      case TransformComponentConstraintYBase.maxYPropertyKey:
        return (object as TransformComponentConstraintYBase).maxY;
      case IKConstraintBase.invertDirectionPropertyKey:
        return (object as IKConstraintBase).invertDirection;
      case FollowPathConstraintBase.orientPropertyKey:
        return (object as FollowPathConstraintBase).orient;
      case FollowPathConstraintBase.offsetPropertyKey:
        return (object as FollowPathConstraintBase).offset;
      case LinearAnimationBase.enableWorkAreaPropertyKey:
        return (object as LinearAnimationBase).enableWorkArea;
      case LinearAnimationBase.quantizePropertyKey:
        return (object as LinearAnimationBase).quantize;
      case NestedSimpleAnimationBase.isPlayingPropertyKey:
        return (object as NestedSimpleAnimationBase).isPlaying;
      case KeyFrameBoolBase.valuePropertyKey:
        return (object as KeyFrameBoolBase).value;
      case NestedBoolBase.nestedValuePropertyKey:
        return (object as NestedBoolBase).nestedValue;
      case StateMachineBoolBase.valuePropertyKey:
        return (object as StateMachineBoolBase).value;
      case ShapePaintBase.isVisiblePropertyKey:
        return (object as ShapePaintBase).isVisible;
      case StrokeBase.transformAffectsStrokePropertyKey:
        return (object as StrokeBase).transformAffectsStroke;
      case PointsPathBase.isClosedPropertyKey:
        return (object as PointsPathBase).isClosed;
      case RectangleBase.linkCornerRadiusPropertyKey:
        return (object as RectangleBase).linkCornerRadius;
      case ClippingShapeBase.isVisiblePropertyKey:
        return (object as ClippingShapeBase).isVisible;
      case CustomPropertyBooleanBase.propertyValuePropertyKey:
        return (object as CustomPropertyBooleanBase).propertyValue;
      case ArtboardBase.clipPropertyKey:
        return (object as ArtboardBase).clip;
      case TextModifierRangeBase.clampPropertyKey:
        return (object as TextModifierRangeBase).clamp;
    }
    return false;
  }

  static int getColor(Core object, int propertyKey) {
    switch (propertyKey) {
      case KeyFrameColorBase.valuePropertyKey:
        return (object as KeyFrameColorBase).value;
      case SolidColorBase.colorValuePropertyKey:
        return (object as SolidColorBase).colorValue;
      case GradientStopBase.colorValuePropertyKey:
        return (object as GradientStopBase).colorValue;
    }
    return 0;
  }

  static Uint8List getBytes(Core object, int propertyKey) {
    switch (propertyKey) {
      case MeshBase.triangleIndexBytesPropertyKey:
        return (object as MeshBase).triangleIndexBytes;
      case FileAssetBase.cdnUuidPropertyKey:
        return (object as FileAssetBase).cdnUuid;
      case FileAssetContentsBase.bytesPropertyKey:
        return (object as FileAssetContentsBase).bytes;
    }
    return Uint8List(0);
  }

  static void setString(Core object, int propertyKey, String value) {
    switch (propertyKey) {
      case ComponentBase.namePropertyKey:
        if (object is ComponentBase) {
          object.name = value;
        }
        break;
      case AnimationBase.namePropertyKey:
        if (object is AnimationBase) {
          object.name = value;
        }
        break;
      case StateMachineComponentBase.namePropertyKey:
        if (object is StateMachineComponentBase) {
          object.name = value;
        }
        break;
      case KeyFrameStringBase.valuePropertyKey:
        if (object is KeyFrameStringBase) {
          object.value = value;
        }
        break;
      case OpenUrlEventBase.urlPropertyKey:
        if (object is OpenUrlEventBase) {
          object.url = value;
        }
        break;
      case TextValueRunBase.textPropertyKey:
        if (object is TextValueRunBase) {
          object.text = value;
        }
        break;
      case CustomPropertyStringBase.propertyValuePropertyKey:
        if (object is CustomPropertyStringBase) {
          object.propertyValue = value;
        }
        break;
      case AssetBase.namePropertyKey:
        if (object is AssetBase) {
          object.name = value;
        }
        break;
      case FileAssetBase.cdnBaseUrlPropertyKey:
        if (object is FileAssetBase) {
          object.cdnBaseUrl = value;
        }
        break;
    }
  }

  static void setUint(Core object, int propertyKey, int value) {
    switch (propertyKey) {
      case ComponentBase.parentIdPropertyKey:
        if (object is ComponentBase) {
          object.parentId = value;
        }
        break;
      case DrawTargetBase.drawableIdPropertyKey:
        if (object is DrawTargetBase) {
          object.drawableId = value;
        }
        break;
      case DrawTargetBase.placementValuePropertyKey:
        if (object is DrawTargetBase) {
          object.placementValue = value;
        }
        break;
      case TargetedConstraintBase.targetIdPropertyKey:
        if (object is TargetedConstraintBase) {
          object.targetId = value;
        }
        break;
      case DistanceConstraintBase.modeValuePropertyKey:
        if (object is DistanceConstraintBase) {
          object.modeValue = value;
        }
        break;
      case TransformSpaceConstraintBase.sourceSpaceValuePropertyKey:
        if (object is TransformSpaceConstraintBase) {
          object.sourceSpaceValue = value;
        }
        break;
      case TransformSpaceConstraintBase.destSpaceValuePropertyKey:
        if (object is TransformSpaceConstraintBase) {
          object.destSpaceValue = value;
        }
        break;
      case TransformComponentConstraintBase.minMaxSpaceValuePropertyKey:
        if (object is TransformComponentConstraintBase) {
          object.minMaxSpaceValue = value;
        }
        break;
      case IKConstraintBase.parentBoneCountPropertyKey:
        if (object is IKConstraintBase) {
          object.parentBoneCount = value;
        }
        break;
      case DrawableBase.blendModeValuePropertyKey:
        if (object is DrawableBase) {
          object.blendModeValue = value;
        }
        break;
      case DrawableBase.drawableFlagsPropertyKey:
        if (object is DrawableBase) {
          object.drawableFlags = value;
        }
        break;
      case NestedArtboardBase.artboardIdPropertyKey:
        if (object is NestedArtboardBase) {
          object.artboardId = value;
        }
        break;
      case NestedAnimationBase.animationIdPropertyKey:
        if (object is NestedAnimationBase) {
          object.animationId = value;
        }
        break;
      case SoloBase.activeComponentIdPropertyKey:
        if (object is SoloBase) {
          object.activeComponentId = value;
        }
        break;
      case ListenerFireEventBase.eventIdPropertyKey:
        if (object is ListenerFireEventBase) {
          object.eventId = value;
        }
        break;
      case LinearAnimationBase.fpsPropertyKey:
        if (object is LinearAnimationBase) {
          object.fps = value;
        }
        break;
      case LinearAnimationBase.durationPropertyKey:
        if (object is LinearAnimationBase) {
          object.duration = value;
        }
        break;
      case LinearAnimationBase.loopValuePropertyKey:
        if (object is LinearAnimationBase) {
          object.loopValue = value;
        }
        break;
      case LinearAnimationBase.workStartPropertyKey:
        if (object is LinearAnimationBase) {
          object.workStart = value;
        }
        break;
      case LinearAnimationBase.workEndPropertyKey:
        if (object is LinearAnimationBase) {
          object.workEnd = value;
        }
        break;
      case ListenerInputChangeBase.inputIdPropertyKey:
        if (object is ListenerInputChangeBase) {
          object.inputId = value;
        }
        break;
      case AnimationStateBase.animationIdPropertyKey:
        if (object is AnimationStateBase) {
          object.animationId = value;
        }
        break;
      case NestedInputBase.inputIdPropertyKey:
        if (object is NestedInputBase) {
          object.inputId = value;
        }
        break;
      case KeyedObjectBase.objectIdPropertyKey:
        if (object is KeyedObjectBase) {
          object.objectId = value;
        }
        break;
      case BlendAnimationBase.animationIdPropertyKey:
        if (object is BlendAnimationBase) {
          object.animationId = value;
        }
        break;
      case BlendAnimationDirectBase.inputIdPropertyKey:
        if (object is BlendAnimationDirectBase) {
          object.inputId = value;
        }
        break;
      case BlendAnimationDirectBase.blendSourcePropertyKey:
        if (object is BlendAnimationDirectBase) {
          object.blendSource = value;
        }
        break;
      case TransitionConditionBase.inputIdPropertyKey:
        if (object is TransitionConditionBase) {
          object.inputId = value;
        }
        break;
      case KeyedPropertyBase.propertyKeyPropertyKey:
        if (object is KeyedPropertyBase) {
          object.propertyKey = value;
        }
        break;
      case StateMachineListenerBase.targetIdPropertyKey:
        if (object is StateMachineListenerBase) {
          object.targetId = value;
        }
        break;
      case StateMachineListenerBase.listenerTypeValuePropertyKey:
        if (object is StateMachineListenerBase) {
          object.listenerTypeValue = value;
        }
        break;
      case KeyFrameBase.framePropertyKey:
        if (object is KeyFrameBase) {
          object.frame = value;
        }
        break;
      case InterpolatingKeyFrameBase.interpolationTypePropertyKey:
        if (object is InterpolatingKeyFrameBase) {
          object.interpolationType = value;
        }
        break;
      case InterpolatingKeyFrameBase.interpolatorIdPropertyKey:
        if (object is InterpolatingKeyFrameBase) {
          object.interpolatorId = value;
        }
        break;
      case KeyFrameIdBase.valuePropertyKey:
        if (object is KeyFrameIdBase) {
          object.value = value;
        }
        break;
      case ListenerBoolChangeBase.valuePropertyKey:
        if (object is ListenerBoolChangeBase) {
          object.value = value;
        }
        break;
      case ListenerAlignTargetBase.targetIdPropertyKey:
        if (object is ListenerAlignTargetBase) {
          object.targetId = value;
        }
        break;
      case TransitionValueConditionBase.opValuePropertyKey:
        if (object is TransitionValueConditionBase) {
          object.opValue = value;
        }
        break;
      case StateTransitionBase.stateToIdPropertyKey:
        if (object is StateTransitionBase) {
          object.stateToId = value;
        }
        break;
      case StateTransitionBase.flagsPropertyKey:
        if (object is StateTransitionBase) {
          object.flags = value;
        }
        break;
      case StateTransitionBase.durationPropertyKey:
        if (object is StateTransitionBase) {
          object.duration = value;
        }
        break;
      case StateTransitionBase.exitTimePropertyKey:
        if (object is StateTransitionBase) {
          object.exitTime = value;
        }
        break;
      case StateTransitionBase.interpolationTypePropertyKey:
        if (object is StateTransitionBase) {
          object.interpolationType = value;
        }
        break;
      case StateTransitionBase.interpolatorIdPropertyKey:
        if (object is StateTransitionBase) {
          object.interpolatorId = value;
        }
        break;
      case StateMachineFireEventBase.eventIdPropertyKey:
        if (object is StateMachineFireEventBase) {
          object.eventId = value;
        }
        break;
      case StateMachineFireEventBase.occursValuePropertyKey:
        if (object is StateMachineFireEventBase) {
          object.occursValue = value;
        }
        break;
      case BlendState1DBase.inputIdPropertyKey:
        if (object is BlendState1DBase) {
          object.inputId = value;
        }
        break;
      case BlendStateTransitionBase.exitBlendAnimationIdPropertyKey:
        if (object is BlendStateTransitionBase) {
          object.exitBlendAnimationId = value;
        }
        break;
      case StrokeBase.capPropertyKey:
        if (object is StrokeBase) {
          object.cap = value;
        }
        break;
      case StrokeBase.joinPropertyKey:
        if (object is StrokeBase) {
          object.join = value;
        }
        break;
      case TrimPathBase.modeValuePropertyKey:
        if (object is TrimPathBase) {
          object.modeValue = value;
        }
        break;
      case FillBase.fillRulePropertyKey:
        if (object is FillBase) {
          object.fillRule = value;
        }
        break;
      case PathBase.pathFlagsPropertyKey:
        if (object is PathBase) {
          object.pathFlags = value;
        }
        break;
      case WeightBase.valuesPropertyKey:
        if (object is WeightBase) {
          object.values = value;
        }
        break;
      case WeightBase.indicesPropertyKey:
        if (object is WeightBase) {
          object.indices = value;
        }
        break;
      case CubicWeightBase.inValuesPropertyKey:
        if (object is CubicWeightBase) {
          object.inValues = value;
        }
        break;
      case CubicWeightBase.inIndicesPropertyKey:
        if (object is CubicWeightBase) {
          object.inIndices = value;
        }
        break;
      case CubicWeightBase.outValuesPropertyKey:
        if (object is CubicWeightBase) {
          object.outValues = value;
        }
        break;
      case CubicWeightBase.outIndicesPropertyKey:
        if (object is CubicWeightBase) {
          object.outIndices = value;
        }
        break;
      case ClippingShapeBase.sourceIdPropertyKey:
        if (object is ClippingShapeBase) {
          object.sourceId = value;
        }
        break;
      case ClippingShapeBase.fillRulePropertyKey:
        if (object is ClippingShapeBase) {
          object.fillRule = value;
        }
        break;
      case PolygonBase.pointsPropertyKey:
        if (object is PolygonBase) {
          object.points = value;
        }
        break;
      case ImageBase.assetIdPropertyKey:
        if (object is ImageBase) {
          object.assetId = value;
        }
        break;
      case DrawRulesBase.drawTargetIdPropertyKey:
        if (object is DrawRulesBase) {
          object.drawTargetId = value;
        }
        break;
      case ArtboardBase.defaultStateMachineIdPropertyKey:
        if (object is ArtboardBase) {
          object.defaultStateMachineId = value;
        }
        break;
      case JoystickBase.xIdPropertyKey:
        if (object is JoystickBase) {
          object.xId = value;
        }
        break;
      case JoystickBase.yIdPropertyKey:
        if (object is JoystickBase) {
          object.yId = value;
        }
        break;
      case JoystickBase.joystickFlagsPropertyKey:
        if (object is JoystickBase) {
          object.joystickFlags = value;
        }
        break;
      case JoystickBase.handleSourceIdPropertyKey:
        if (object is JoystickBase) {
          object.handleSourceId = value;
        }
        break;
      case OpenUrlEventBase.targetValuePropertyKey:
        if (object is OpenUrlEventBase) {
          object.targetValue = value;
        }
        break;
      case TendonBase.boneIdPropertyKey:
        if (object is TendonBase) {
          object.boneId = value;
        }
        break;
      case TextModifierRangeBase.unitsValuePropertyKey:
        if (object is TextModifierRangeBase) {
          object.unitsValue = value;
        }
        break;
      case TextModifierRangeBase.typeValuePropertyKey:
        if (object is TextModifierRangeBase) {
          object.typeValue = value;
        }
        break;
      case TextModifierRangeBase.modeValuePropertyKey:
        if (object is TextModifierRangeBase) {
          object.modeValue = value;
        }
        break;
      case TextModifierRangeBase.runIdPropertyKey:
        if (object is TextModifierRangeBase) {
          object.runId = value;
        }
        break;
      case TextStyleFeatureBase.tagPropertyKey:
        if (object is TextStyleFeatureBase) {
          object.tag = value;
        }
        break;
      case TextStyleFeatureBase.featureValuePropertyKey:
        if (object is TextStyleFeatureBase) {
          object.featureValue = value;
        }
        break;
      case TextVariationModifierBase.axisTagPropertyKey:
        if (object is TextVariationModifierBase) {
          object.axisTag = value;
        }
        break;
      case TextModifierGroupBase.modifierFlagsPropertyKey:
        if (object is TextModifierGroupBase) {
          object.modifierFlags = value;
        }
        break;
      case TextStyleBase.fontAssetIdPropertyKey:
        if (object is TextStyleBase) {
          object.fontAssetId = value;
        }
        break;
      case TextStyleAxisBase.tagPropertyKey:
        if (object is TextStyleAxisBase) {
          object.tag = value;
        }
        break;
      case TextBase.alignValuePropertyKey:
        if (object is TextBase) {
          object.alignValue = value;
        }
        break;
      case TextBase.sizingValuePropertyKey:
        if (object is TextBase) {
          object.sizingValue = value;
        }
        break;
      case TextBase.overflowValuePropertyKey:
        if (object is TextBase) {
          object.overflowValue = value;
        }
        break;
      case TextBase.originValuePropertyKey:
        if (object is TextBase) {
          object.originValue = value;
        }
        break;
      case TextValueRunBase.styleIdPropertyKey:
        if (object is TextValueRunBase) {
          object.styleId = value;
        }
        break;
      case FileAssetBase.assetIdPropertyKey:
        if (object is FileAssetBase) {
          object.assetId = value;
        }
        break;
    }
  }

  static void setDouble(Core object, int propertyKey, double value) {
    switch (propertyKey) {
      case CustomPropertyNumberBase.propertyValuePropertyKey:
        if (object is CustomPropertyNumberBase) {
          object.propertyValue = value;
        }
        break;
      case ConstraintBase.strengthPropertyKey:
        if (object is ConstraintBase) {
          object.strength = value;
        }
        break;
      case DistanceConstraintBase.distancePropertyKey:
        if (object is DistanceConstraintBase) {
          object.distance = value;
        }
        break;
      case TransformComponentConstraintBase.copyFactorPropertyKey:
        if (object is TransformComponentConstraintBase) {
          object.copyFactor = value;
        }
        break;
      case TransformComponentConstraintBase.minValuePropertyKey:
        if (object is TransformComponentConstraintBase) {
          object.minValue = value;
        }
        break;
      case TransformComponentConstraintBase.maxValuePropertyKey:
        if (object is TransformComponentConstraintBase) {
          object.maxValue = value;
        }
        break;
      case TransformComponentConstraintYBase.copyFactorYPropertyKey:
        if (object is TransformComponentConstraintYBase) {
          object.copyFactorY = value;
        }
        break;
      case TransformComponentConstraintYBase.minValueYPropertyKey:
        if (object is TransformComponentConstraintYBase) {
          object.minValueY = value;
        }
        break;
      case TransformComponentConstraintYBase.maxValueYPropertyKey:
        if (object is TransformComponentConstraintYBase) {
          object.maxValueY = value;
        }
        break;
      case FollowPathConstraintBase.distancePropertyKey:
        if (object is FollowPathConstraintBase) {
          object.distance = value;
        }
        break;
      case TransformConstraintBase.originXPropertyKey:
        if (object is TransformConstraintBase) {
          object.originX = value;
        }
        break;
      case TransformConstraintBase.originYPropertyKey:
        if (object is TransformConstraintBase) {
          object.originY = value;
        }
        break;
      case WorldTransformComponentBase.opacityPropertyKey:
        if (object is WorldTransformComponentBase) {
          object.opacity = value;
        }
        break;
      case TransformComponentBase.rotationPropertyKey:
        if (object is TransformComponentBase) {
          object.rotation = value;
        }
        break;
      case TransformComponentBase.scaleXPropertyKey:
        if (object is TransformComponentBase) {
          object.scaleX = value;
        }
        break;
      case TransformComponentBase.scaleYPropertyKey:
        if (object is TransformComponentBase) {
          object.scaleY = value;
        }
        break;
      case NodeBase.xPropertyKey:
        if (object is NodeBase) {
          object.x = value;
        }
        break;
      case NodeBase.yPropertyKey:
        if (object is NodeBase) {
          object.y = value;
        }
        break;
      case LinearAnimationBase.speedPropertyKey:
        if (object is LinearAnimationBase) {
          object.speed = value;
        }
        break;
      case NestedLinearAnimationBase.mixPropertyKey:
        if (object is NestedLinearAnimationBase) {
          object.mix = value;
        }
        break;
      case NestedSimpleAnimationBase.speedPropertyKey:
        if (object is NestedSimpleAnimationBase) {
          object.speed = value;
        }
        break;
      case AdvanceableStateBase.speedPropertyKey:
        if (object is AdvanceableStateBase) {
          object.speed = value;
        }
        break;
      case BlendAnimationDirectBase.mixValuePropertyKey:
        if (object is BlendAnimationDirectBase) {
          object.mixValue = value;
        }
        break;
      case StateMachineNumberBase.valuePropertyKey:
        if (object is StateMachineNumberBase) {
          object.value = value;
        }
        break;
      case CubicInterpolatorBase.x1PropertyKey:
        if (object is CubicInterpolatorBase) {
          object.x1 = value;
        }
        break;
      case CubicInterpolatorBase.y1PropertyKey:
        if (object is CubicInterpolatorBase) {
          object.y1 = value;
        }
        break;
      case CubicInterpolatorBase.x2PropertyKey:
        if (object is CubicInterpolatorBase) {
          object.x2 = value;
        }
        break;
      case CubicInterpolatorBase.y2PropertyKey:
        if (object is CubicInterpolatorBase) {
          object.y2 = value;
        }
        break;
      case TransitionNumberConditionBase.valuePropertyKey:
        if (object is TransitionNumberConditionBase) {
          object.value = value;
        }
        break;
      case CubicInterpolatorComponentBase.x1PropertyKey:
        if (object is CubicInterpolatorComponentBase) {
          object.x1 = value;
        }
        break;
      case CubicInterpolatorComponentBase.y1PropertyKey:
        if (object is CubicInterpolatorComponentBase) {
          object.y1 = value;
        }
        break;
      case CubicInterpolatorComponentBase.x2PropertyKey:
        if (object is CubicInterpolatorComponentBase) {
          object.x2 = value;
        }
        break;
      case CubicInterpolatorComponentBase.y2PropertyKey:
        if (object is CubicInterpolatorComponentBase) {
          object.y2 = value;
        }
        break;
      case ListenerNumberChangeBase.valuePropertyKey:
        if (object is ListenerNumberChangeBase) {
          object.value = value;
        }
        break;
      case KeyFrameDoubleBase.valuePropertyKey:
        if (object is KeyFrameDoubleBase) {
          object.value = value;
        }
        break;
      case NestedNumberBase.nestedValuePropertyKey:
        if (object is NestedNumberBase) {
          object.nestedValue = value;
        }
        break;
      case BlendAnimation1DBase.valuePropertyKey:
        if (object is BlendAnimation1DBase) {
          object.value = value;
        }
        break;
      case NestedRemapAnimationBase.timePropertyKey:
        if (object is NestedRemapAnimationBase) {
          object.time = value;
        }
        break;
      case LinearGradientBase.startXPropertyKey:
        if (object is LinearGradientBase) {
          object.startX = value;
        }
        break;
      case LinearGradientBase.startYPropertyKey:
        if (object is LinearGradientBase) {
          object.startY = value;
        }
        break;
      case LinearGradientBase.endXPropertyKey:
        if (object is LinearGradientBase) {
          object.endX = value;
        }
        break;
      case LinearGradientBase.endYPropertyKey:
        if (object is LinearGradientBase) {
          object.endY = value;
        }
        break;
      case LinearGradientBase.opacityPropertyKey:
        if (object is LinearGradientBase) {
          object.opacity = value;
        }
        break;
      case StrokeBase.thicknessPropertyKey:
        if (object is StrokeBase) {
          object.thickness = value;
        }
        break;
      case GradientStopBase.positionPropertyKey:
        if (object is GradientStopBase) {
          object.position = value;
        }
        break;
      case TrimPathBase.startPropertyKey:
        if (object is TrimPathBase) {
          object.start = value;
        }
        break;
      case TrimPathBase.endPropertyKey:
        if (object is TrimPathBase) {
          object.end = value;
        }
        break;
      case TrimPathBase.offsetPropertyKey:
        if (object is TrimPathBase) {
          object.offset = value;
        }
        break;
      case VertexBase.xPropertyKey:
        if (object is VertexBase) {
          object.x = value;
        }
        break;
      case VertexBase.yPropertyKey:
        if (object is VertexBase) {
          object.y = value;
        }
        break;
      case MeshVertexBase.uPropertyKey:
        if (object is MeshVertexBase) {
          object.u = value;
        }
        break;
      case MeshVertexBase.vPropertyKey:
        if (object is MeshVertexBase) {
          object.v = value;
        }
        break;
      case StraightVertexBase.radiusPropertyKey:
        if (object is StraightVertexBase) {
          object.radius = value;
        }
        break;
      case CubicAsymmetricVertexBase.rotationPropertyKey:
        if (object is CubicAsymmetricVertexBase) {
          object.rotation = value;
        }
        break;
      case CubicAsymmetricVertexBase.inDistancePropertyKey:
        if (object is CubicAsymmetricVertexBase) {
          object.inDistance = value;
        }
        break;
      case CubicAsymmetricVertexBase.outDistancePropertyKey:
        if (object is CubicAsymmetricVertexBase) {
          object.outDistance = value;
        }
        break;
      case ParametricPathBase.widthPropertyKey:
        if (object is ParametricPathBase) {
          object.width = value;
        }
        break;
      case ParametricPathBase.heightPropertyKey:
        if (object is ParametricPathBase) {
          object.height = value;
        }
        break;
      case ParametricPathBase.originXPropertyKey:
        if (object is ParametricPathBase) {
          object.originX = value;
        }
        break;
      case ParametricPathBase.originYPropertyKey:
        if (object is ParametricPathBase) {
          object.originY = value;
        }
        break;
      case RectangleBase.cornerRadiusTLPropertyKey:
        if (object is RectangleBase) {
          object.cornerRadiusTL = value;
        }
        break;
      case RectangleBase.cornerRadiusTRPropertyKey:
        if (object is RectangleBase) {
          object.cornerRadiusTR = value;
        }
        break;
      case RectangleBase.cornerRadiusBLPropertyKey:
        if (object is RectangleBase) {
          object.cornerRadiusBL = value;
        }
        break;
      case RectangleBase.cornerRadiusBRPropertyKey:
        if (object is RectangleBase) {
          object.cornerRadiusBR = value;
        }
        break;
      case CubicMirroredVertexBase.rotationPropertyKey:
        if (object is CubicMirroredVertexBase) {
          object.rotation = value;
        }
        break;
      case CubicMirroredVertexBase.distancePropertyKey:
        if (object is CubicMirroredVertexBase) {
          object.distance = value;
        }
        break;
      case PolygonBase.cornerRadiusPropertyKey:
        if (object is PolygonBase) {
          object.cornerRadius = value;
        }
        break;
      case StarBase.innerRadiusPropertyKey:
        if (object is StarBase) {
          object.innerRadius = value;
        }
        break;
      case ImageBase.originXPropertyKey:
        if (object is ImageBase) {
          object.originX = value;
        }
        break;
      case ImageBase.originYPropertyKey:
        if (object is ImageBase) {
          object.originY = value;
        }
        break;
      case CubicDetachedVertexBase.inRotationPropertyKey:
        if (object is CubicDetachedVertexBase) {
          object.inRotation = value;
        }
        break;
      case CubicDetachedVertexBase.inDistancePropertyKey:
        if (object is CubicDetachedVertexBase) {
          object.inDistance = value;
        }
        break;
      case CubicDetachedVertexBase.outRotationPropertyKey:
        if (object is CubicDetachedVertexBase) {
          object.outRotation = value;
        }
        break;
      case CubicDetachedVertexBase.outDistancePropertyKey:
        if (object is CubicDetachedVertexBase) {
          object.outDistance = value;
        }
        break;
      case ArtboardBase.widthPropertyKey:
        if (object is ArtboardBase) {
          object.width = value;
        }
        break;
      case ArtboardBase.heightPropertyKey:
        if (object is ArtboardBase) {
          object.height = value;
        }
        break;
      case ArtboardBase.xPropertyKey:
        if (object is ArtboardBase) {
          object.x = value;
        }
        break;
      case ArtboardBase.yPropertyKey:
        if (object is ArtboardBase) {
          object.y = value;
        }
        break;
      case ArtboardBase.originXPropertyKey:
        if (object is ArtboardBase) {
          object.originX = value;
        }
        break;
      case ArtboardBase.originYPropertyKey:
        if (object is ArtboardBase) {
          object.originY = value;
        }
        break;
      case JoystickBase.xPropertyKey:
        if (object is JoystickBase) {
          object.x = value;
        }
        break;
      case JoystickBase.yPropertyKey:
        if (object is JoystickBase) {
          object.y = value;
        }
        break;
      case JoystickBase.posXPropertyKey:
        if (object is JoystickBase) {
          object.posX = value;
        }
        break;
      case JoystickBase.posYPropertyKey:
        if (object is JoystickBase) {
          object.posY = value;
        }
        break;
      case JoystickBase.originXPropertyKey:
        if (object is JoystickBase) {
          object.originX = value;
        }
        break;
      case JoystickBase.originYPropertyKey:
        if (object is JoystickBase) {
          object.originY = value;
        }
        break;
      case JoystickBase.widthPropertyKey:
        if (object is JoystickBase) {
          object.width = value;
        }
        break;
      case JoystickBase.heightPropertyKey:
        if (object is JoystickBase) {
          object.height = value;
        }
        break;
      case BoneBase.lengthPropertyKey:
        if (object is BoneBase) {
          object.length = value;
        }
        break;
      case RootBoneBase.xPropertyKey:
        if (object is RootBoneBase) {
          object.x = value;
        }
        break;
      case RootBoneBase.yPropertyKey:
        if (object is RootBoneBase) {
          object.y = value;
        }
        break;
      case SkinBase.xxPropertyKey:
        if (object is SkinBase) {
          object.xx = value;
        }
        break;
      case SkinBase.yxPropertyKey:
        if (object is SkinBase) {
          object.yx = value;
        }
        break;
      case SkinBase.xyPropertyKey:
        if (object is SkinBase) {
          object.xy = value;
        }
        break;
      case SkinBase.yyPropertyKey:
        if (object is SkinBase) {
          object.yy = value;
        }
        break;
      case SkinBase.txPropertyKey:
        if (object is SkinBase) {
          object.tx = value;
        }
        break;
      case SkinBase.tyPropertyKey:
        if (object is SkinBase) {
          object.ty = value;
        }
        break;
      case TendonBase.xxPropertyKey:
        if (object is TendonBase) {
          object.xx = value;
        }
        break;
      case TendonBase.yxPropertyKey:
        if (object is TendonBase) {
          object.yx = value;
        }
        break;
      case TendonBase.xyPropertyKey:
        if (object is TendonBase) {
          object.xy = value;
        }
        break;
      case TendonBase.yyPropertyKey:
        if (object is TendonBase) {
          object.yy = value;
        }
        break;
      case TendonBase.txPropertyKey:
        if (object is TendonBase) {
          object.tx = value;
        }
        break;
      case TendonBase.tyPropertyKey:
        if (object is TendonBase) {
          object.ty = value;
        }
        break;
      case TextModifierRangeBase.modifyFromPropertyKey:
        if (object is TextModifierRangeBase) {
          object.modifyFrom = value;
        }
        break;
      case TextModifierRangeBase.modifyToPropertyKey:
        if (object is TextModifierRangeBase) {
          object.modifyTo = value;
        }
        break;
      case TextModifierRangeBase.strengthPropertyKey:
        if (object is TextModifierRangeBase) {
          object.strength = value;
        }
        break;
      case TextModifierRangeBase.falloffFromPropertyKey:
        if (object is TextModifierRangeBase) {
          object.falloffFrom = value;
        }
        break;
      case TextModifierRangeBase.falloffToPropertyKey:
        if (object is TextModifierRangeBase) {
          object.falloffTo = value;
        }
        break;
      case TextModifierRangeBase.offsetPropertyKey:
        if (object is TextModifierRangeBase) {
          object.offset = value;
        }
        break;
      case TextVariationModifierBase.axisValuePropertyKey:
        if (object is TextVariationModifierBase) {
          object.axisValue = value;
        }
        break;
      case TextModifierGroupBase.originXPropertyKey:
        if (object is TextModifierGroupBase) {
          object.originX = value;
        }
        break;
      case TextModifierGroupBase.originYPropertyKey:
        if (object is TextModifierGroupBase) {
          object.originY = value;
        }
        break;
      case TextModifierGroupBase.opacityPropertyKey:
        if (object is TextModifierGroupBase) {
          object.opacity = value;
        }
        break;
      case TextModifierGroupBase.xPropertyKey:
        if (object is TextModifierGroupBase) {
          object.x = value;
        }
        break;
      case TextModifierGroupBase.yPropertyKey:
        if (object is TextModifierGroupBase) {
          object.y = value;
        }
        break;
      case TextModifierGroupBase.rotationPropertyKey:
        if (object is TextModifierGroupBase) {
          object.rotation = value;
        }
        break;
      case TextModifierGroupBase.scaleXPropertyKey:
        if (object is TextModifierGroupBase) {
          object.scaleX = value;
        }
        break;
      case TextModifierGroupBase.scaleYPropertyKey:
        if (object is TextModifierGroupBase) {
          object.scaleY = value;
        }
        break;
      case TextStyleBase.fontSizePropertyKey:
        if (object is TextStyleBase) {
          object.fontSize = value;
        }
        break;
      case TextStyleBase.lineHeightPropertyKey:
        if (object is TextStyleBase) {
          object.lineHeight = value;
        }
        break;
      case TextStyleBase.letterSpacingPropertyKey:
        if (object is TextStyleBase) {
          object.letterSpacing = value;
        }
        break;
      case TextStyleAxisBase.axisValuePropertyKey:
        if (object is TextStyleAxisBase) {
          object.axisValue = value;
        }
        break;
      case TextBase.widthPropertyKey:
        if (object is TextBase) {
          object.width = value;
        }
        break;
      case TextBase.heightPropertyKey:
        if (object is TextBase) {
          object.height = value;
        }
        break;
      case TextBase.originXPropertyKey:
        if (object is TextBase) {
          object.originX = value;
        }
        break;
      case TextBase.originYPropertyKey:
        if (object is TextBase) {
          object.originY = value;
        }
        break;
      case TextBase.paragraphSpacingPropertyKey:
        if (object is TextBase) {
          object.paragraphSpacing = value;
        }
        break;
      case DrawableAssetBase.heightPropertyKey:
        if (object is DrawableAssetBase) {
          object.height = value;
        }
        break;
      case DrawableAssetBase.widthPropertyKey:
        if (object is DrawableAssetBase) {
          object.width = value;
        }
        break;
    }
  }

  static void setBool(Core object, int propertyKey, bool value) {
    switch (propertyKey) {
      case TransformComponentConstraintBase.offsetPropertyKey:
        if (object is TransformComponentConstraintBase) {
          object.offset = value;
        }
        break;
      case TransformComponentConstraintBase.doesCopyPropertyKey:
        if (object is TransformComponentConstraintBase) {
          object.doesCopy = value;
        }
        break;
      case TransformComponentConstraintBase.minPropertyKey:
        if (object is TransformComponentConstraintBase) {
          object.min = value;
        }
        break;
      case TransformComponentConstraintBase.maxPropertyKey:
        if (object is TransformComponentConstraintBase) {
          object.max = value;
        }
        break;
      case TransformComponentConstraintYBase.doesCopyYPropertyKey:
        if (object is TransformComponentConstraintYBase) {
          object.doesCopyY = value;
        }
        break;
      case TransformComponentConstraintYBase.minYPropertyKey:
        if (object is TransformComponentConstraintYBase) {
          object.minY = value;
        }
        break;
      case TransformComponentConstraintYBase.maxYPropertyKey:
        if (object is TransformComponentConstraintYBase) {
          object.maxY = value;
        }
        break;
      case IKConstraintBase.invertDirectionPropertyKey:
        if (object is IKConstraintBase) {
          object.invertDirection = value;
        }
        break;
      case FollowPathConstraintBase.orientPropertyKey:
        if (object is FollowPathConstraintBase) {
          object.orient = value;
        }
        break;
      case FollowPathConstraintBase.offsetPropertyKey:
        if (object is FollowPathConstraintBase) {
          object.offset = value;
        }
        break;
      case LinearAnimationBase.enableWorkAreaPropertyKey:
        if (object is LinearAnimationBase) {
          object.enableWorkArea = value;
        }
        break;
      case LinearAnimationBase.quantizePropertyKey:
        if (object is LinearAnimationBase) {
          object.quantize = value;
        }
        break;
      case NestedSimpleAnimationBase.isPlayingPropertyKey:
        if (object is NestedSimpleAnimationBase) {
          object.isPlaying = value;
        }
        break;
      case KeyFrameBoolBase.valuePropertyKey:
        if (object is KeyFrameBoolBase) {
          object.value = value;
        }
        break;
      case NestedBoolBase.nestedValuePropertyKey:
        if (object is NestedBoolBase) {
          object.nestedValue = value;
        }
        break;
      case StateMachineBoolBase.valuePropertyKey:
        if (object is StateMachineBoolBase) {
          object.value = value;
        }
        break;
      case ShapePaintBase.isVisiblePropertyKey:
        if (object is ShapePaintBase) {
          object.isVisible = value;
        }
        break;
      case StrokeBase.transformAffectsStrokePropertyKey:
        if (object is StrokeBase) {
          object.transformAffectsStroke = value;
        }
        break;
      case PointsPathBase.isClosedPropertyKey:
        if (object is PointsPathBase) {
          object.isClosed = value;
        }
        break;
      case RectangleBase.linkCornerRadiusPropertyKey:
        if (object is RectangleBase) {
          object.linkCornerRadius = value;
        }
        break;
      case ClippingShapeBase.isVisiblePropertyKey:
        if (object is ClippingShapeBase) {
          object.isVisible = value;
        }
        break;
      case CustomPropertyBooleanBase.propertyValuePropertyKey:
        if (object is CustomPropertyBooleanBase) {
          object.propertyValue = value;
        }
        break;
      case ArtboardBase.clipPropertyKey:
        if (object is ArtboardBase) {
          object.clip = value;
        }
        break;
      case TextModifierRangeBase.clampPropertyKey:
        if (object is TextModifierRangeBase) {
          object.clamp = value;
        }
        break;
    }
  }

  static void setColor(Core object, int propertyKey, int value) {
    switch (propertyKey) {
      case KeyFrameColorBase.valuePropertyKey:
        if (object is KeyFrameColorBase) {
          object.value = value;
        }
        break;
      case SolidColorBase.colorValuePropertyKey:
        if (object is SolidColorBase) {
          object.colorValue = value;
        }
        break;
      case GradientStopBase.colorValuePropertyKey:
        if (object is GradientStopBase) {
          object.colorValue = value;
        }
        break;
    }
  }

  static void setBytes(Core object, int propertyKey, Uint8List value) {
    switch (propertyKey) {
      case MeshBase.triangleIndexBytesPropertyKey:
        if (object is MeshBase) {
          object.triangleIndexBytes = value;
        }
        break;
      case FileAssetBase.cdnUuidPropertyKey:
        if (object is FileAssetBase) {
          object.cdnUuid = value;
        }
        break;
      case FileAssetContentsBase.bytesPropertyKey:
        if (object is FileAssetContentsBase) {
          object.bytes = value;
        }
        break;
    }
  }

  static void setCallback(Core object, int propertyKey, CallbackData value) {
    switch (propertyKey) {
      case EventBase.triggerPropertyKey:
        if (object is EventBase) {
          object.trigger(value);
        }
        break;
    }
  }
}
