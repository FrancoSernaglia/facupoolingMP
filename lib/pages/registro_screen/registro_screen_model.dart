import '/flutter_flow/flutter_flow_util.dart';
import 'registro_screen_widget.dart' show RegistroScreenWidget;
import 'package:flutter/material.dart';

class RegistroScreenModel extends FlutterFlowModel<RegistroScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaTextController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaTextControllerValidator;
  // State field(s) for contrasenaconffirmar widget.
  FocusNode? contrasenaconffirmarFocusNode;
  TextEditingController? contrasenaconffirmarTextController;
  late bool contrasenaconffirmarVisibility;
  String? Function(BuildContext, String?)?
      contrasenaconffirmarTextControllerValidator;

  @override
  void initState(BuildContext context) {
    contrasenaVisibility = false;
    contrasenaconffirmarVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaTextController?.dispose();

    contrasenaconffirmarFocusNode?.dispose();
    contrasenaconffirmarTextController?.dispose();
  }
}
