import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'profile_edit_widget.dart' show ProfileEditWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProfileEditModel extends FlutterFlowModel<ProfileEditWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataN2xlocal = false;
  FFUploadedFile uploadedLocalFile_uploadDataN2xlocal =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for nickName widget.
  FocusNode? nickNameFocusNode;
  TextEditingController? nickNameTextController;
  String? Function(BuildContext, String?)? nickNameTextControllerValidator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for number widget.
  FocusNode? numberFocusNode;
  TextEditingController? numberTextController;
  String? Function(BuildContext, String?)? numberTextControllerValidator;
  // State field(s) for carrier widget.
  FocusNode? carrierFocusNode;
  TextEditingController? carrierTextController;
  String? Function(BuildContext, String?)? carrierTextControllerValidator;
  // State field(s) for semester widget.
  FocusNode? semesterFocusNode;
  TextEditingController? semesterTextController;
  String? Function(BuildContext, String?)? semesterTextControllerValidator;
  bool isDataUploading_uploadDataJ32firebase = false;
  FFUploadedFile uploadedLocalFile_uploadDataJ32firebase =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataJ32firebase = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nickNameFocusNode?.dispose();
    nickNameTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    numberFocusNode?.dispose();
    numberTextController?.dispose();

    carrierFocusNode?.dispose();
    carrierTextController?.dispose();

    semesterFocusNode?.dispose();
    semesterTextController?.dispose();
  }
}
