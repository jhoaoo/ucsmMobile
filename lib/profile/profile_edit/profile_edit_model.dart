import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'profile_edit_widget.dart' show ProfileEditWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileEditModel extends FlutterFlowModel<ProfileEditWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for career widget.
  FocusNode? careerFocusNode;
  TextEditingController? careerTextController;
  String? Function(BuildContext, String?)? careerTextControllerValidator;
  // State field(s) for semester widget.
  FocusNode? semesterFocusNode;
  TextEditingController? semesterTextController;
  String? Function(BuildContext, String?)? semesterTextControllerValidator;
  // State field(s) for GPS widget.
  FocusNode? gpsFocusNode;
  TextEditingController? gpsTextController;
  String? Function(BuildContext, String?)? gpsTextControllerValidator;
  // State field(s) for Gmail widget.
  FocusNode? gmailFocusNode;
  TextEditingController? gmailTextController;
  String? Function(BuildContext, String?)? gmailTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for skills widget.
  FocusNode? skillsFocusNode1;
  TextEditingController? skillsTextController1;
  String? Function(BuildContext, String?)? skillsTextController1Validator;
  // State field(s) for skills widget.
  FocusNode? skillsFocusNode2;
  TextEditingController? skillsTextController2;
  String? Function(BuildContext, String?)? skillsTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    careerFocusNode?.dispose();
    careerTextController?.dispose();

    semesterFocusNode?.dispose();
    semesterTextController?.dispose();

    gpsFocusNode?.dispose();
    gpsTextController?.dispose();

    gmailFocusNode?.dispose();
    gmailTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    skillsFocusNode1?.dispose();
    skillsTextController1?.dispose();

    skillsFocusNode2?.dispose();
    skillsTextController2?.dispose();
  }
}
