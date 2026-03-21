import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'a_d_a_s_f_a_widget.dart' show ADASFAWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ADASFAModel extends FlutterFlowModel<ADASFAWidget> {
  ///  Local state fields for this page.

  bool isEvent = false;

  bool isActive = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  EventsRecord? eventos;
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  EventsRecord? evento;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
