import '/backend/api_requests/api_calls.dart';
import '/components/form_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastroendereco_widget.dart' show CadastroenderecoWidget;
import 'package:flutter/material.dart';

class CadastroenderecoModel extends FlutterFlowModel<CadastroenderecoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // Stores action output result for [Backend Call - API (buscaCep)] action in cep widget.
  ApiCallResponse? apiResult11k;
  // Model for FormField.
  late FormFieldModel formFieldModel1;
  // State field(s) for logradouro widget.
  FocusNode? logradouroFocusNode;
  TextEditingController? logradouroTextController;
  String? Function(BuildContext, String?)? logradouroTextControllerValidator;
  // Model for numero.
  late FormFieldModel numeroModel;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroTextController;
  String? Function(BuildContext, String?)? numeroTextControllerValidator;
  // Model for FormField.
  late FormFieldModel formFieldModel2;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // Model for FormField.
  late FormFieldModel formFieldModel3;
  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoTextController;
  String? Function(BuildContext, String?)? complementoTextControllerValidator;
  // Model for FormField.
  late FormFieldModel formFieldModel4;
  // State field(s) for referencia widget.
  FocusNode? referenciaFocusNode;
  TextEditingController? referenciaTextController;
  String? Function(BuildContext, String?)? referenciaTextControllerValidator;
  // Stores action output result for [Backend Call - API (cadastroCep)] action in Button widget.
  ApiCallResponse? apiResultn3g;
  // Stores action output result for [Backend Call - API (cadastroEndereco)] action in Button widget.
  ApiCallResponse? apiResultrz8;

  @override
  void initState(BuildContext context) {
    formFieldModel1 = createModel(context, () => FormFieldModel());
    numeroModel = createModel(context, () => FormFieldModel());
    formFieldModel2 = createModel(context, () => FormFieldModel());
    formFieldModel3 = createModel(context, () => FormFieldModel());
    formFieldModel4 = createModel(context, () => FormFieldModel());
  }

  @override
  void dispose() {
    cepFocusNode?.dispose();
    cepTextController?.dispose();

    formFieldModel1.dispose();
    logradouroFocusNode?.dispose();
    logradouroTextController?.dispose();

    numeroModel.dispose();
    numeroFocusNode?.dispose();
    numeroTextController?.dispose();

    formFieldModel2.dispose();
    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    formFieldModel3.dispose();
    complementoFocusNode?.dispose();
    complementoTextController?.dispose();

    formFieldModel4.dispose();
    referenciaFocusNode?.dispose();
    referenciaTextController?.dispose();
  }
}
