import '/components/button/button_widget.dart';
import '/components/dish_info_tag/dish_info_tag_widget.dart';
import '/components/ingredient_chip/ingredient_chip_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhesdoitem_widget.dart' show DetalhesdoitemWidget;
import 'package:flutter/material.dart';

class DetalhesdoitemModel extends FlutterFlowModel<DetalhesdoitemWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DishInfoTag.
  late DishInfoTagModel dishInfoTagModel1;
  // Model for DishInfoTag.
  late DishInfoTagModel dishInfoTagModel2;
  // Model for DishInfoTag.
  late DishInfoTagModel dishInfoTagModel3;
  // Model for IngredientChip.
  late IngredientChipModel ingredientChipModel1;
  // Model for IngredientChip.
  late IngredientChipModel ingredientChipModel2;
  // Model for IngredientChip.
  late IngredientChipModel ingredientChipModel3;
  // Model for IngredientChip.
  late IngredientChipModel ingredientChipModel4;
  // Model for IngredientChip.
  late IngredientChipModel ingredientChipModel5;
  // Model for IngredientChip.
  late IngredientChipModel ingredientChipModel6;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    dishInfoTagModel1 = createModel(context, () => DishInfoTagModel());
    dishInfoTagModel2 = createModel(context, () => DishInfoTagModel());
    dishInfoTagModel3 = createModel(context, () => DishInfoTagModel());
    ingredientChipModel1 = createModel(context, () => IngredientChipModel());
    ingredientChipModel2 = createModel(context, () => IngredientChipModel());
    ingredientChipModel3 = createModel(context, () => IngredientChipModel());
    ingredientChipModel4 = createModel(context, () => IngredientChipModel());
    ingredientChipModel5 = createModel(context, () => IngredientChipModel());
    ingredientChipModel6 = createModel(context, () => IngredientChipModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    dishInfoTagModel1.dispose();
    dishInfoTagModel2.dispose();
    dishInfoTagModel3.dispose();
    ingredientChipModel1.dispose();
    ingredientChipModel2.dispose();
    ingredientChipModel3.dispose();
    ingredientChipModel4.dispose();
    ingredientChipModel5.dispose();
    ingredientChipModel6.dispose();
    buttonModel.dispose();
  }
}
