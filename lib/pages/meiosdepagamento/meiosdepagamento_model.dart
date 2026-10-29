import '/components/payment_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meiosdepagamento_widget.dart' show MeiosdepagamentoWidget;
import 'package:flutter/material.dart';

class MeiosdepagamentoModel extends FlutterFlowModel<MeiosdepagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PaymentCard.
  late PaymentCardModel paymentCardModel1;
  // Model for PaymentCard.
  late PaymentCardModel paymentCardModel2;

  @override
  void initState(BuildContext context) {
    paymentCardModel1 = createModel(context, () => PaymentCardModel());
    paymentCardModel2 = createModel(context, () => PaymentCardModel());
  }

  @override
  void dispose() {
    paymentCardModel1.dispose();
    paymentCardModel2.dispose();
  }
}
