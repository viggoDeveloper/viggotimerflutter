import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterNewUserPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nombre widget.
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for apellido widget.
  TextEditingController? apellidoController;
  String? Function(BuildContext, String?)? apellidoControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for cargo widget.
  TextEditingController? cargoController;
  String? Function(BuildContext, String?)? cargoControllerValidator;
  // State field(s) for ciudad widget.
  String? ciudadValue;
  FormFieldController<String>? ciudadValueController;
  // State field(s) for Correo widget.
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;
  // State field(s) for Celular widget.
  TextEditingController? celularController;
  String? Function(BuildContext, String?)? celularControllerValidator;
  // State field(s) for sede widget.
  String? sedeValue;
  FormFieldController<String>? sedeValueController;
  // State field(s) for Marca widget.
  String? marcaValue;
  FormFieldController<String>? marcaValueController;
  // State field(s) for rol widget.
  String? rolValue;
  FormFieldController<String>? rolValueController;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for confirm_password widget.
  TextEditingController? confirmPasswordController;
  String? Function(BuildContext, String?)? confirmPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nombreController?.dispose();
    apellidoController?.dispose();
    textController3?.dispose();
    cargoController?.dispose();
    correoController?.dispose();
    celularController?.dispose();
    passwordController?.dispose();
    confirmPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
