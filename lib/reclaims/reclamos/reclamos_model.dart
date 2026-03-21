import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/mouse_region_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'reclamos_widget.dart' show ReclamosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReclamosModel extends FlutterFlowModel<ReclamosWidget> {
  ///  Local state fields for this page.

  bool isEvent = false;

  String selectCategory = 'Seleccionar...';

  ///  State fields for stateful widgets in this page.

  // State field(s) for Select widget.
  FocusNode? selectFocusNode;
  TextEditingController? selectTextController;
  String? Function(BuildContext, String?)? selectTextControllerValidator;
  // State field(s) for problemDescription widget.
  FocusNode? problemDescriptionFocusNode;
  TextEditingController? problemDescriptionTextController;
  String? Function(BuildContext, String?)?
      problemDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    selectFocusNode?.dispose();
    selectTextController?.dispose();

    problemDescriptionFocusNode?.dispose();
    problemDescriptionTextController?.dispose();
  }
}
