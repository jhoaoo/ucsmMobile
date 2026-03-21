import '/backend/backend.dart';
import '/components/drawer_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'materiales_widget.dart' show MaterialesWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MaterialesModel extends FlutterFlowModel<MaterialesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchC widget.
  String? searchCValue;
  FormFieldController<String>? searchCValueController;
  // Model for drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
  }

  /// Action blocks.
  Future expandable(BuildContext context) async {
    await expandable(context);
  }
}
