import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'side_bar_menu_model.dart';
export 'side_bar_menu_model.dart';

class SideBarMenuWidget extends StatefulWidget {
  const SideBarMenuWidget({
    super.key,
    required this.pageName,
  });

  final String? pageName;

  @override
  State<SideBarMenuWidget> createState() => _SideBarMenuWidgetState();
}

class _SideBarMenuWidgetState extends State<SideBarMenuWidget> {
  late SideBarMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideBarMenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.146,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'Dashboard',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.068,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    widget.pageName == 'Dashboard'
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).secondaryBackground,
                    FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.dashboard_sharp,
                        color: valueOrDefault<Color>(
                          widget.pageName == 'Dashboard'
                              ? FlutterFlowTheme.of(context).primaryBackground
                              : FlutterFlowTheme.of(context).primaryText,
                          FlutterFlowTheme.of(context).primaryText,
                        ),
                        size: 30.0,
                      ),
                      Text(
                        'Dashboard',
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .titleMediumFamily,
                              color: valueOrDefault<Color>(
                                widget.pageName == 'Dashboard'
                                    ? FlutterFlowTheme.of(context)
                                        .primaryBackground
                                    : FlutterFlowTheme.of(context).primaryText,
                                FlutterFlowTheme.of(context).primaryText,
                              ),
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleMediumFamily),
                            ),
                      ),
                    ].divide(const SizedBox(width: 15.0)),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.068,
              decoration: BoxDecoration(
                color: widget.pageName == 'Products'
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('Product_Page');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: widget.pageName == 'Products'
                          ? FlutterFlowTheme.of(context).primaryBackground
                          : FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    Text(
                      'Products',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: widget.pageName == 'Products'
                                ? FlutterFlowTheme.of(context).primaryBackground
                                : FlutterFlowTheme.of(context).primaryText,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleMediumFamily),
                          ),
                    ),
                  ].divide(const SizedBox(width: 15.0)),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.068,
              decoration: BoxDecoration(
                color: widget.pageName == 'Order List'
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.list_sharp,
                    color: widget.pageName == 'Order List'
                        ? FlutterFlowTheme.of(context).primaryBackground
                        : FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  Text(
                    'Order List',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          color: widget.pageName == 'Order List'
                              ? FlutterFlowTheme.of(context).primaryBackground
                              : FlutterFlowTheme.of(context).primaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleMediumFamily),
                        ),
                  ),
                ].divide(const SizedBox(width: 15.0)),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.068,
              decoration: BoxDecoration(
                color: widget.pageName == 'Product Stock'
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.store,
                    color: widget.pageName == 'Product Stock'
                        ? FlutterFlowTheme.of(context).primaryBackground
                        : FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  Text(
                    'Product Stock',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          color: widget.pageName == 'Product Stock'
                              ? FlutterFlowTheme.of(context).primaryBackground
                              : FlutterFlowTheme.of(context).primaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleMediumFamily),
                        ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.068,
              decoration: BoxDecoration(
                color: widget.pageName == 'Inbox'
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.chat_bubble_outline_sharp,
                    color: widget.pageName == 'Inbox'
                        ? FlutterFlowTheme.of(context).primaryBackground
                        : FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  Text(
                    'Inbox',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          color: widget.pageName == 'Inbox'
                              ? FlutterFlowTheme.of(context).primaryBackground
                              : FlutterFlowTheme.of(context).primaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleMediumFamily),
                        ),
                  ),
                ].divide(const SizedBox(width: 15.0)),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.068,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  Text(
                    'Calender',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleMediumFamily),
                        ),
                  ),
                ].divide(const SizedBox(width: 15.0)),
              ),
            ),
          ].divide(const SizedBox(height: 25.0)).addToStart(const SizedBox(height: 20.0)),
        ),
      ),
    );
  }
}
