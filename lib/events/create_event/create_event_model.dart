import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'create_event_widget.dart' show CreateEventWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateEventModel extends FlutterFlowModel<CreateEventWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for event widget.
  String? eventValue;
  FormFieldController<String>? eventValueController;
  // State field(s) for tittleEvent widget.
  FocusNode? tittleEventFocusNode;
  TextEditingController? tittleEventTextController;
  String? Function(BuildContext, String?)? tittleEventTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  String? Function(BuildContext, String?)? dateTextControllerValidator;
  // State field(s) for hour widget.
  FocusNode? hourFocusNode;
  TextEditingController? hourTextController;
  String? Function(BuildContext, String?)? hourTextControllerValidator;
  // State field(s) for place widget.
  FocusNode? placeFocusNode;
  TextEditingController? placeTextController;
  String? Function(BuildContext, String?)? placeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tittleEventFocusNode?.dispose();
    tittleEventTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    dateFocusNode?.dispose();
    dateTextController?.dispose();

    hourFocusNode?.dispose();
    hourTextController?.dispose();

    placeFocusNode?.dispose();
    placeTextController?.dispose();
  }
}
