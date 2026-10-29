import '/components/action_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dadosdaconta_widget.dart' show DadosdacontaWidget;
import 'package:flutter/material.dart';

class DadosdacontaModel extends FlutterFlowModel<DadosdacontaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ActionRow.
  late ActionRowModel actionRowModel1;
  // Model for ActionRow.
  late ActionRowModel actionRowModel2;

  @override
  void initState(BuildContext context) {
    actionRowModel1 = createModel(context, () => ActionRowModel());
    actionRowModel2 = createModel(context, () => ActionRowModel());
  }

  @override
  void dispose() {
    actionRowModel1.dispose();
    actionRowModel2.dispose();
  }
}
