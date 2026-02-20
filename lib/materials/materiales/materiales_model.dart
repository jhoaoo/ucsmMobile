import '/auth/firebase_auth/auth_util.dart';
import '/components/expandable_materials_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'materiales_widget.dart' show MaterialesWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MaterialesModel extends FlutterFlowModel<MaterialesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for expandableMaterials component.
  late ExpandableMaterialsModel expandableMaterialsModel;

  @override
  void initState(BuildContext context) {
    expandableMaterialsModel =
        createModel(context, () => ExpandableMaterialsModel());
  }

  @override
  void dispose() {
    expandableMaterialsModel.dispose();
  }
}
