import '/components/order_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meuspedidos_widget.dart' show MeuspedidosWidget;
import 'package:flutter/material.dart';

class MeuspedidosModel extends FlutterFlowModel<MeuspedidosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for OrderCard.
  late OrderCardModel orderCardModel1;
  // Model for OrderCard.
  late OrderCardModel orderCardModel2;
  // Model for OrderCard.
  late OrderCardModel orderCardModel3;

  @override
  void initState(BuildContext context) {
    orderCardModel1 = createModel(context, () => OrderCardModel());
    orderCardModel2 = createModel(context, () => OrderCardModel());
    orderCardModel3 = createModel(context, () => OrderCardModel());
  }

  @override
  void dispose() {
    orderCardModel1.dispose();
    orderCardModel2.dispose();
    orderCardModel3.dispose();
  }
}
