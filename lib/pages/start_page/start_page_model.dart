import '/flutter_flow/flutter_flow_util.dart';
import 'start_page_widget.dart' show StartPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class StartPageModel extends FlutterFlowModel<StartPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PhoneField widget.
  FocusNode? phoneFieldFocusNode;
  TextEditingController? phoneFieldTextController;
  final phoneFieldMask = MaskTextInputFormatter(mask: '+7 (###) ### ## ##');
  String? Function(BuildContext, String?)? phoneFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneFieldFocusNode?.dispose();
    phoneFieldTextController?.dispose();
  }
}
