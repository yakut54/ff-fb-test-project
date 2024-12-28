import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'select_model_widget_model.dart';
export 'select_model_widget_model.dart';

class SelectModelWidgetWidget extends StatefulWidget {
  const SelectModelWidgetWidget({super.key});

  @override
  State<SelectModelWidgetWidget> createState() =>
      _SelectModelWidgetWidgetState();
}

class _SelectModelWidgetWidgetState extends State<SelectModelWidgetWidget> {
  late SelectModelWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectModelWidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<CarsRecord>>(
      stream: queryCarsRecord(
        queryBuilder: (carsRecord) => carsRecord.where(
          'mark',
          isEqualTo: FFAppState().mark,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<CarsRecord> containerCarsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerCarsRecord = containerCarsRecordList.isNotEmpty
            ? containerCarsRecordList.first
            : null;

        return Container(
          width: double.infinity,
          height: 250.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
          ),
          child: Builder(
            builder: (context) {
              final model = containerCarsRecord?.models.toList() ?? [];

              return ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: model.length,
                itemBuilder: (context, modelIndex) {
                  final modelItem = model[modelIndex];
                  return Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().model = modelItem;
                        safeSetState(() {});
                        Navigator.pop(context);
                      },
                      child: Text(
                        modelItem,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Lato',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
