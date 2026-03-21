import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mouse_region_model.dart';
export 'mouse_region_model.dart';

class MouseRegionWidget extends StatefulWidget {
  const MouseRegionWidget({
    super.key,
    String? parameter1,
    bool? parameter2,
    this.updateAction,
  })  : this.parameter1 = parameter1 ?? 'seleccionar',
        this.parameter2 = parameter2 ?? false;

  final String parameter1;
  final bool parameter2;
  final Future Function(String selectedCategoryC)? updateAction;

  @override
  State<MouseRegionWidget> createState() => _MouseRegionWidgetState();
}

class _MouseRegionWidgetState extends State<MouseRegionWidget> {
  late MouseRegionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MouseRegionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.updateAction?.call(
            widget!.parameter1,
          );
        },
        child: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.05,
          decoration: BoxDecoration(
            color: _model.mouseRegionHovered!
                ? FlutterFlowTheme.of(context).primary
                : Color(0x00000000),
            border: Border.all(
              color: Color(0xFFDEDEDE),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              widget!.parameter1,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
