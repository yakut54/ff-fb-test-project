import '/flutter_flow/flutter_flow_util.dart';
import 's_m_s_page_widget.dart' show SMSPageWidget;
import 'package:flutter/material.dart';

class SMSPageModel extends FlutterFlowModel<SMSPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
