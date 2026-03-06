import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'upload_materials_widget.dart' show UploadMaterialsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadMaterialsModel extends FlutterFlowModel<UploadMaterialsWidget> {
  ///  Local state fields for this page.

  bool isActive = true;

  bool activeCourse = false;

  DocumentReference? semesterRef;

  DocumentReference? careerRef;

  List<CoursesRecord> courses = [];
  void addToCourses(CoursesRecord item) => courses.add(item);
  void removeFromCourses(CoursesRecord item) => courses.remove(item);
  void removeAtIndexFromCourses(int index) => courses.removeAt(index);
  void insertAtIndexInCourses(int index, CoursesRecord item) =>
      courses.insert(index, item);
  void updateCoursesAtIndex(int index, Function(CoursesRecord) updateFn) =>
      courses[index] = updateFn(courses[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for career widget.
  String? careerValue;
  FormFieldController<String>? careerValueController;
  // State field(s) for semesterA widget.
  String? semesterAValue;
  FormFieldController<String>? semesterAValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in semesterA widget.
  SemesterRecord? semesterfound;
  // Stores action output result for [Firestore Query - Query a collection] action in semesterA widget.
  List<CoursesRecord>? coursesL;
  // State field(s) for course widget.
  String? courseValue;
  FormFieldController<String>? courseValueController;
  // State field(s) for Recurse widget.
  FocusNode? recurseFocusNode;
  TextEditingController? recurseTextController;
  String? Function(BuildContext, String?)? recurseTextControllerValidator;
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for Author widget.
  FocusNode? authorFocusNode;
  TextEditingController? authorTextController;
  String? Function(BuildContext, String?)? authorTextControllerValidator;
  bool isDataUploading_uploadData4vm = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData4vm = [];
  List<String> uploadedFileUrls_uploadData4vm = [];

  // State field(s) for Url widget.
  FocusNode? urlFocusNode;
  TextEditingController? urlTextController;
  String? Function(BuildContext, String?)? urlTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    recurseFocusNode?.dispose();
    recurseTextController?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    authorFocusNode?.dispose();
    authorTextController?.dispose();

    urlFocusNode?.dispose();
    urlTextController?.dispose();
  }
}
