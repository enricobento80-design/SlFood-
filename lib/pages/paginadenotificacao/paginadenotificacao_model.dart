import '/components/notification_item_widget.dart';
import '/components/section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'paginadenotificacao_widget.dart' show PaginadenotificacaoWidget;
import 'package:flutter/material.dart';

class PaginadenotificacaoModel
    extends FlutterFlowModel<PaginadenotificacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for NotificationItem.
  late NotificationItemModel notificationItemModel1;
  // Model for NotificationItem.
  late NotificationItemModel notificationItemModel2;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel3;
  // Model for NotificationItem.
  late NotificationItemModel notificationItemModel3;
  // Model for NotificationItem.
  late NotificationItemModel notificationItemModel4;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    notificationItemModel1 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel2 =
        createModel(context, () => NotificationItemModel());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
    notificationItemModel3 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel4 =
        createModel(context, () => NotificationItemModel());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    sectionHeaderModel2.dispose();
    notificationItemModel1.dispose();
    notificationItemModel2.dispose();
    sectionHeaderModel3.dispose();
    notificationItemModel3.dispose();
    notificationItemModel4.dispose();
  }
}
