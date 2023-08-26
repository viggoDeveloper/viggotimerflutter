import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'myrecord_page_model.dart';
export 'myrecord_page_model.dart';

class MyrecordPageWidget extends StatefulWidget {
  const MyrecordPageWidget({
    Key? key,
    required this.idUser,
  }) : super(key: key);

  final DocumentReference? idUser;

  @override
  _MyrecordPageWidgetState createState() => _MyrecordPageWidgetState();
}

class _MyrecordPageWidgetState extends State<MyrecordPageWidget> {
  late MyrecordPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyrecordPageModel());
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
              context.pushNamed('home_Page');
            },
            child: Icon(
              Icons.chevron_left_outlined,
              color: Colors.black,
              size: 24.0,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Aqui puedes visualizar todos tus registros.',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 6.0,
                          color: Color(0x33000000),
                          offset: Offset(2.0, 4.0),
                          spreadRadius: 4.0,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: StreamBuilder<List<TimeUserRecord>>(
                            stream: queryTimeUserRecord(
                              queryBuilder: (timeUserRecord) => timeUserRecord
                                  .where('idUser', isEqualTo: widget.idUser),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitCircle(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<TimeUserRecord> dataTableTimeUserRecordList =
                                  snapshot.data!;
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
                                                .labelLarge,
                                          ),
                                        ),
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Nombre',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                          ),
                                        ),
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Imagen',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                          ),
                                        ),
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Horario',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                          ),
                                        ),
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Hora',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge,
                                          ),
                                        ),
                                      ),
                                    ],
                                    rows: dataTableTimeUserRecordList
                                        .mapIndexed((dataTableIndex,
                                                dataTableTimeUserRecord) =>
                                            [
                                              Text(
                                                dataTableTimeUserRecord
                                                    .document,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              AuthUserStreamWidget(
                                                builder: (context) => Text(
                                                  valueOrDefault(
                                                      currentUserDocument?.name,
                                                      ''),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                              Container(
                                                width: 40.0,
                                                height: 40.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  dataTableTimeUserRecord
                                                      .photoCheck,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Text(
                                                dataTableTimeUserRecord
                                                    .timetype,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              Text(
                                                dateTimeFormat(
                                                  'M/d H:mm',
                                                  dataTableTimeUserRecord.hour!,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ].map((c) => DataCell(c)).toList())
                                        .map((e) => DataRow(cells: e))
                                        .toList(),
                                    headingRowColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    headingRowHeight: 56.0,
                                    dataRowColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    dataRowHeight: 56.0,
                                    border: TableBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    dividerThickness: 2.0,
                                    columnSpacing: 3.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
