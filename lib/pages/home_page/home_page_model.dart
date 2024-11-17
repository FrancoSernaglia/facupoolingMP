import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for corrreo2 widget.
  FocusNode? corrreo2FocusNode;
  TextEditingController? corrreo2TextController;
  String? Function(BuildContext, String?)? corrreo2TextControllerValidator;
  // State field(s) for contrasena1 widget.
  FocusNode? contrasena1FocusNode;
  TextEditingController? contrasena1TextController;
  late bool contrasena1Visibility;
  String? Function(BuildContext, String?)? contrasena1TextControllerValidator;

  @override
  void initState(BuildContext context) {
    contrasena1Visibility = false;
  }

  @override
  void dispose() {
    corrreo2FocusNode?.dispose();
    corrreo2TextController?.dispose();

    contrasena1FocusNode?.dispose();
    contrasena1TextController?.dispose();
  }
}
