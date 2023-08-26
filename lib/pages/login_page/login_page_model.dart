import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldEmail widget.
  TextEditingController? textFieldEmailController;
  String? Function(BuildContext, String?)? textFieldEmailControllerValidator;
  String? _textFieldEmailControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    if (!RegExp(
            '[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}')
        .hasMatch(val)) {
      return 'Correo no Valido';
    }
    return null;
  }

  // State field(s) for TextFieldPassword widget.
  TextEditingController? textFieldPasswordController;
  late bool textFieldPasswordVisibility;
  String? Function(BuildContext, String?)? textFieldPasswordControllerValidator;
  String? _textFieldPasswordControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldEmailControllerValidator = _textFieldEmailControllerValidator;
    textFieldPasswordVisibility = false;
    textFieldPasswordControllerValidator =
        _textFieldPasswordControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldEmailController?.dispose();
    textFieldPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
