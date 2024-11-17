import '/flutter_flow/flutter_flow_util.dart';
import 'apicall_widget.dart' show ApicallWidget;
import 'package:flutter/material.dart';

class ApicallModel extends FlutterFlowModel<ApicallWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for latitud widget.
  FocusNode? latitudFocusNode;
  TextEditingController? latitudTextController;
  String? Function(BuildContext, String?)? latitudTextControllerValidator;
  // State field(s) for longitud widget.
  FocusNode? longitudFocusNode;
  TextEditingController? longitudTextController;
  String? Function(BuildContext, String?)? longitudTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    latitudFocusNode?.dispose();
    latitudTextController?.dispose();

    longitudFocusNode?.dispose();
    longitudTextController?.dispose();
  }
}
