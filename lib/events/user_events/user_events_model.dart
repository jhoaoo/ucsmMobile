import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'user_events_widget.dart' show UserEventsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
=======
>>>>>>> 752c6c6ded0384ff5f337032ce4ffec8bb2543d5
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserEventsModel extends FlutterFlowModel<UserEventsWidget> {
  ///  Local state fields for this page.

  bool isEvent = false;

  bool isActive = false;

<<<<<<< HEAD
  bool expandE = false;

=======
>>>>>>> 752c6c6ded0384ff5f337032ce4ffec8bb2543d5
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
