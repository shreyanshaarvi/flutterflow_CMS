import '/flutter_flow/flutter_flow_util.dart';
import '/utility/app_bar_custom/app_bar_custom_widget.dart';
import '/utility/side_bar_menu/side_bar_menu_widget.dart';
import 'product_page_widget.dart' show ProductPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductPageModel extends FlutterFlowModel<ProductPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AppBarCustom component.
  late AppBarCustomModel appBarCustomModel;
  // Model for SideBarMenu component.
  late SideBarMenuModel sideBarMenuModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController1;

  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController2;

  int carouselCurrentIndex2 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController3;

  int carouselCurrentIndex3 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController4;

  int carouselCurrentIndex4 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController5;

  int carouselCurrentIndex5 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController6;

  int carouselCurrentIndex6 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController7;

  int carouselCurrentIndex7 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController8;

  int carouselCurrentIndex8 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController9;

  int carouselCurrentIndex9 = 1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    appBarCustomModel = createModel(context, () => AppBarCustomModel());
    sideBarMenuModel = createModel(context, () => SideBarMenuModel());
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
