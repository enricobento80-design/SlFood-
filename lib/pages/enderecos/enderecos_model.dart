import '/components/address_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enderecos_widget.dart' show EnderecosWidget;
import 'package:flutter/material.dart';

class EnderecosModel extends FlutterFlowModel<EnderecosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AddressItem.
  late AddressItemModel addressItemModel1;
  // Model for AddressItem.
  late AddressItemModel addressItemModel2;

  @override
  void initState(BuildContext context) {
    addressItemModel1 = createModel(context, () => AddressItemModel());
    addressItemModel2 = createModel(context, () => AddressItemModel());
  }

  @override
  void dispose() {
    addressItemModel1.dispose();
    addressItemModel2.dispose();
  }
}
