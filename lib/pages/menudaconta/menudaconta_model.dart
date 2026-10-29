import '/components/bottom_nav/bottom_nav_widget.dart';
import '/components/button/button_widget.dart';
import '/components/profile_option/profile_option_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'menudaconta_widget.dart' show MenudacontaWidget;
import 'package:flutter/material.dart';

class MenudacontaModel extends FlutterFlowModel<MenudacontaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileOption.
  late ProfileOptionModel profileOptionModel1;
  // Model for ProfileOption.
  late ProfileOptionModel profileOptionModel2;
  // Model for ProfileOption.
  late ProfileOptionModel profileOptionModel3;
  // Model for ProfileOption.
  late ProfileOptionModel profileOptionModel4;
  // Model for ProfileOption.
  late ProfileOptionModel profileOptionModel5;
  // Model for Button.
  late ButtonModel buttonModel;
  // Model for BottomNav.
  late BottomNavModel bottomNavModel;

  @override
  void initState(BuildContext context) {
    profileOptionModel1 = createModel(context, () => ProfileOptionModel());
    profileOptionModel2 = createModel(context, () => ProfileOptionModel());
    profileOptionModel3 = createModel(context, () => ProfileOptionModel());
    profileOptionModel4 = createModel(context, () => ProfileOptionModel());
    profileOptionModel5 = createModel(context, () => ProfileOptionModel());
    buttonModel = createModel(context, () => ButtonModel());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  @override
  void dispose() {
    profileOptionModel1.dispose();
    profileOptionModel2.dispose();
    profileOptionModel3.dispose();
    profileOptionModel4.dispose();
    profileOptionModel5.dispose();
    buttonModel.dispose();
    bottomNavModel.dispose();
  }
}
