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
  ///  Local state fields for this page.

  bool isActive = true;

  bool selectworker = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for entrepreneurship widget.
  String? entrepreneurshipValue;
  FormFieldController<String>? entrepreneurshipValueController;
  // State field(s) for tittleEvent widget.
  FocusNode? tittleEventFocusNode;
  TextEditingController? tittleEventTextController;
  String? Function(BuildContext, String?)? tittleEventTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for date widget.
  FocusNode? dateFocusNode1;
  TextEditingController? dateTextController1;
  String? Function(BuildContext, String?)? dateTextController1Validator;
  // State field(s) for hour widget.
  FocusNode? hourFocusNode1;
  TextEditingController? hourTextController1;
  String? Function(BuildContext, String?)? hourTextController1Validator;
  // State field(s) for place widget.
  FocusNode? placeFocusNode;
  TextEditingController? placeTextController;
  String? Function(BuildContext, String?)? placeTextControllerValidator;
  // State field(s) for tittleEntrepreneurship widget.
  FocusNode? tittleEntrepreneurshipFocusNode;
  TextEditingController? tittleEntrepreneurshipTextController;
  String? Function(BuildContext, String?)?
      tittleEntrepreneurshipTextControllerValidator;
  // State field(s) for descriptionEntrepreneurship widget.
  FocusNode? descriptionEntrepreneurshipFocusNode;
  TextEditingController? descriptionEntrepreneurshipTextController;
  String? Function(BuildContext, String?)?
      descriptionEntrepreneurshipTextControllerValidator;
  // State field(s) for date widget.
  FocusNode? dateFocusNode2;
  TextEditingController? dateTextController2;
  String? Function(BuildContext, String?)? dateTextController2Validator;
  // State field(s) for hour widget.
  FocusNode? hourFocusNode2;
  TextEditingController? hourTextController2;
  String? Function(BuildContext, String?)? hourTextController2Validator;
  // State field(s) for date widget.
  FocusNode? dateFocusNode3;
  TextEditingController? dateTextController3;
  String? Function(BuildContext, String?)? dateTextController3Validator;
  // State field(s) for hour widget.
  FocusNode? hourFocusNode3;
  TextEditingController? hourTextController3;
  String? Function(BuildContext, String?)? hourTextController3Validator;
  // State field(s) for placeEntrepreneurship widget.
  FocusNode? placeEntrepreneurshipFocusNode;
  TextEditingController? placeEntrepreneurshipTextController;
  String? Function(BuildContext, String?)?
      placeEntrepreneurshipTextControllerValidator;
  // State field(s) for requimentsEntrepreneurship widget.
  FocusNode? requimentsEntrepreneurshipFocusNode;
  TextEditingController? requimentsEntrepreneurshipTextController;
  String? Function(BuildContext, String?)?
      requimentsEntrepreneurshipTextControllerValidator;
  // State field(s) for payEntrepreneurship widget.
  FocusNode? payEntrepreneurshipFocusNode;
  TextEditingController? payEntrepreneurshipTextController;
  String? Function(BuildContext, String?)?
      payEntrepreneurshipTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tittleEventFocusNode?.dispose();
    tittleEventTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    dateFocusNode1?.dispose();
    dateTextController1?.dispose();

    hourFocusNode1?.dispose();
    hourTextController1?.dispose();

    placeFocusNode?.dispose();
    placeTextController?.dispose();

    tittleEntrepreneurshipFocusNode?.dispose();
    tittleEntrepreneurshipTextController?.dispose();

    descriptionEntrepreneurshipFocusNode?.dispose();
    descriptionEntrepreneurshipTextController?.dispose();

    dateFocusNode2?.dispose();
    dateTextController2?.dispose();

    hourFocusNode2?.dispose();
    hourTextController2?.dispose();

    dateFocusNode3?.dispose();
    dateTextController3?.dispose();

    hourFocusNode3?.dispose();
    hourTextController3?.dispose();

    placeEntrepreneurshipFocusNode?.dispose();
    placeEntrepreneurshipTextController?.dispose();

    requimentsEntrepreneurshipFocusNode?.dispose();
    requimentsEntrepreneurshipTextController?.dispose();

    payEntrepreneurshipFocusNode?.dispose();
    payEntrepreneurshipTextController?.dispose();
  }
}
