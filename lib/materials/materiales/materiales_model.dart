import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'materiales_widget.dart' show MaterialesWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MaterialesModel extends FlutterFlowModel<MaterialesWidget> {
  ///  Local state fields for this page.

  List<String> carriers = [];
  void addToCarriers(String item) => carriers.add(item);
  void removeFromCarriers(String item) => carriers.remove(item);
  void removeAtIndexFromCarriers(int index) => carriers.removeAt(index);
  void insertAtIndexInCarriers(int index, String item) =>
      carriers.insert(index, item);
  void updateCarriersAtIndex(int index, Function(String) updateFn) =>
      carriers[index] = updateFn(carriers[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in materiales widget.
  List<CourseRecord>? courses;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
