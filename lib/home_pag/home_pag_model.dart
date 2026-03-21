import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/materials/expandable_materials/expandable_materials_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'home_pag_widget.dart' show HomePagWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePagModel extends FlutterFlowModel<HomePagWidget> {
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
