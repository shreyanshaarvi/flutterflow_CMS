import '/flutter_flow/flutter_flow_util.dart';
import '/utility/app_bar_custom/app_bar_custom_widget.dart';
import '/utility/side_bar_menu/side_bar_menu_widget.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppBarCustom component.
  late AppBarCustomModel appBarCustomModel;
  // Model for SideBarMenu component.
  late SideBarMenuModel sideBarMenuModel;
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    appBarCustomModel = createModel(context, () => AppBarCustomModel());
    sideBarMenuModel = createModel(context, () => SideBarMenuModel());
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    appBarCustomModel.dispose();
    sideBarMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
