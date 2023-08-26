import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_data_report_user_page_model.dart';
export 'view_data_report_user_page_model.dart';

class ViewDataReportUserPageWidget extends StatefulWidget {
  const ViewDataReportUserPageWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DocumentReference? data;

  @override
  _ViewDataReportUserPageWidgetState createState() =>
      _ViewDataReportUserPageWidgetState();
}

class _ViewDataReportUserPageWidgetState
    extends State<ViewDataReportUserPageWidget> {
  late ViewDataReportUserPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewDataReportUserPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).lineColor,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('viewAllrepor_Page');
            },
            child: Icon(
              Icons.chevron_left_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: StreamBuilder<List<TimeUserRecord>>(
                    stream: queryTimeUserRecord(
                      queryBuilder: (timeUserRecord) => timeUserRecord
                          .where('idUser', isEqualTo: widget.data),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: SpinKitCircle(
                              color: FlutterFlowTheme.of(context).primary,
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      List<TimeUserRecord> dataTableTimeUserRecordList =
                          snapshot.data!;
                      if (dataTableTimeUserRecordList.isEmpty) {
                        return Image.asset(
                          'assets/images/Sin_ttulo-1.png',
                        );
                      }
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          width: 600.0,
                          child: DataTable2(
                            columns: [
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Documento',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 15.0,
                                        ),
                                  ),
                                ),
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Nombre',
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Horario',
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Hora',
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Motivo',
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Ubicacion',
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ),
                            ],
                            rows: dataTableTimeUserRecordList
                                .mapIndexed((dataTableIndex,
                                        dataTableTimeUserRecord) =>
                                    [
                                      Text(
                                        dataTableTimeUserRecord.document,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Text(
                                        dataTableTimeUserRecord.name,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Text(
                                        dataTableTimeUserRecord.timetype,
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Text(
                                        dateTimeFormat(
                                          'M/d h:mm a',
                                          dataTableTimeUserRecord.hour!,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 14.0,
                                            ),
                                      ),
                                      Text(
                                        dataTableTimeUserRecord.reason,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Text(
                                        dataTableTimeUserRecord.location!
                                            .toString(),
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 13.0,
                                            ),
                                      ),
                                    ].map((c) => DataCell(c)).toList())
                                .map((e) => DataRow(cells: e))
                                .toList(),
                            headingRowColor: MaterialStateProperty.all(
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            headingRowHeight: 50.0,
                            dataRowColor: MaterialStateProperty.all(
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            dataRowHeight: 80.0,
                            border: TableBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            dividerThickness: 1.0,
                            columnSpacing: 1.0,
                            showBottomBorder: true,
                            minWidth: 49.0,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
