import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utility/app_bar_custom/app_bar_custom_widget.dart';
import '/utility/side_bar_menu/side_bar_menu_widget.dart';
import 'package:flutter/material.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chartPieChartColorsList2 = [
      const Color(0xFF8F46E9),
      const Color(0xFF6F28CB),
      const Color(0xFF2536A4),
      const Color(0xFF4A57C1)
    ];
    return Title(
        title: 'Dashboard',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.appBarCustomModel,
                    updateCallback: () => setState(() {}),
                    child: const AppBarCustomWidget(),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.sideBarMenuModel,
                          updateCallback: () => setState(() {}),
                          child: const SideBarMenuWidget(),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Dashboard',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.493,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    'Revenue',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  child: FlutterFlowLineChart(
                                                    data: [
                                                      FFLineChartData(
                                                        xData: FFAppConstants
                                                            .monthName,
                                                        yData: FFAppConstants
                                                                .Revenue
                                                            .map((e) =>
                                                                formatNumber(
                                                                  e,
                                                                  formatType:
                                                                      FormatType
                                                                          .custom,
                                                                  currency: '₹',
                                                                  format: '',
                                                                  locale: '',
                                                                )).toList(),
                                                        settings:
                                                            LineChartBarData(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          barWidth: 2.0,
                                                          isCurved: true,
                                                          dotData: FlDotData(
                                                              show: false),
                                                          belowBarData:
                                                              BarAreaData(
                                                            show: true,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                    chartStylingInfo:
                                                        ChartStylingInfo(
                                                      enableTooltip: true,
                                                      tooltipBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      showBorder: false,
                                                    ),
                                                    axisBounds: const AxisBounds(
                                                      minY: 50.0,
                                                      maxY: 100.0,
                                                    ),
                                                    xAxisLabelInfo:
                                                        const AxisLabelInfo(
                                                      title: 'Month Name',
                                                      titleTextStyle: TextStyle(
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    yAxisLabelInfo:
                                                        const AxisLabelInfo(
                                                      title:
                                                          'Revenue In Thousands',
                                                      titleTextStyle: TextStyle(
                                                        fontSize: 14.0,
                                                      ),
                                                      showLabels: true,
                                                      labelTextStyle: TextStyle(
                                                        fontSize: 12.0,
                                                      ),
                                                      labelInterval: 20.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 20.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.3,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    'Customer',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.11,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.17,
                                                  child: FlutterFlowPieChart(
                                                    data: FFPieChartData(
                                                      values: FFAppConstants
                                                                  .Revenue
                                                              .map((e) =>
                                                                  e.toString())
                                                          .toList(),
                                                      colors:
                                                          chartPieChartColorsList2,
                                                      radius: [74.0],
                                                    ),
                                                    donutHoleRadius: 0.0,
                                                    donutHoleColor:
                                                        Colors.transparent,
                                                    sectionLabelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          '2328',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Text(
                                                            'New Customers',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall,
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 6.0)),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          '232',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Text(
                                                            'Returned Customers',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall,
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 6.0)),
                                                    ),
                                                  ],
                                                ),
                                              ].divide(const SizedBox(height: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.3,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    'Featured Product',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge,
                                                  ),
                                                ),
                                                Expanded(
                                                  child:
                                                      FlutterFlowSwipeableStack(
                                                    onSwipeFn: (index) {},
                                                    onLeftSwipe: (index) {},
                                                    onRightSwipe: (index) {},
                                                    onUpSwipe: (index) {},
                                                    onDownSwipe: (index) {},
                                                    itemBuilder:
                                                        (context, index) {
                                                      return [
                                                        () => ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                'https://picsum.photos/seed/859/600',
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                        () => ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                'https://picsum.photos/seed/958/600',
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                        () => ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                'https://picsum.photos/seed/877/600',
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                        () => ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                'https://picsum.photos/seed/617/600',
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                      ][index]();
                                                    },
                                                    itemCount: 4,
                                                    controller: _model
                                                        .swipeableStackController,
                                                    loop: false,
                                                    cardDisplayCount: 3,
                                                    scale: 0.7,
                                                    threshold: 1.0,
                                                    maxAngle: 21.0,
                                                    cardPadding:
                                                        const EdgeInsets.all(0.0),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.3,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    'Sales Analytics',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 370.0,
                                                  height: 230.0,
                                                  child: FlutterFlowBarChart(
                                                    barData: [
                                                      FFBarChartData(
                                                        yData: FFAppConstants
                                                            .Revenue,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      )
                                                    ],
                                                    xLabels: FFAppConstants
                                                        .monthName,
                                                    barWidth: 16.0,
                                                    barBorderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    groupSpace: 8.0,
                                                    alignment: BarChartAlignment
                                                        .spaceAround,
                                                    chartStylingInfo:
                                                        ChartStylingInfo(
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      showBorder: false,
                                                    ),
                                                    axisBounds: const AxisBounds(),
                                                    xAxisLabelInfo:
                                                        const AxisLabelInfo(),
                                                    yAxisLabelInfo:
                                                        const AxisLabelInfo(),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 50.0)),
                                  ),
                                ].divide(const SizedBox(height: 20.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
