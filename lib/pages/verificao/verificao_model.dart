import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verificao_widget.dart' show VerificaoWidget;
import 'package:flutter/material.dart';

class VerificaoModel extends FlutterFlowModel<VerificaoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for codigoDigitado widget.
  TextEditingController? codigoDigitado;
  FocusNode? codigoDigitadoFocusNode;
  String? Function(BuildContext, String?)? codigoDigitadoValidator;
  // Stores action output result for [Backend Call - API (validarOTP)] action in Button widget.
  ApiCallResponse? apiResultiw5;

  @override
  void initState(BuildContext context) {
    codigoDigitado = TextEditingController();
  }

  @override
  void dispose() {
    codigoDigitadoFocusNode?.dispose();
    codigoDigitado?.dispose();
  }
}
