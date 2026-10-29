import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NOME widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for EMAIL widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for CELULAR widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  late MaskTextInputFormatter celularMask;
  String? Function(BuildContext, String?)? celularTextControllerValidator;
  // State field(s) for SENHA widget.
  late FocusNode senhaPasswordVisibilityFocusNode;
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (cadastroUser)] action in Button widget.
  ApiCallResponse? apiResult124;
  // Stores action output result for [Backend Call - API (codigoOTP)] action in Button widget.
  ApiCallResponse? apiResultdqq;
  // Stores action output result for [Backend Call - API (cadastroCliente)] action in Button widget.
  ApiCallResponse? apiResult3ez;

  @override
  void initState(BuildContext context) {
    senhaPasswordVisibilityFocusNode = FocusNode();
    senhaVisibility = false;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    celularFocusNode?.dispose();
    celularTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();
    senhaPasswordVisibilityFocusNode.dispose();
  }
}
