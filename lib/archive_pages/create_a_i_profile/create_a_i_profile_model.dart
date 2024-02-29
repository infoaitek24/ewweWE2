import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_a_i_profile_widget.dart' show CreateAIProfileWidget;
import 'package:flutter/material.dart';

class CreateAIProfileModel extends FlutterFlowModel<CreateAIProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for dogName widget.
  FocusNode? dogNameFocusNode;
  TextEditingController? dogNameController;
  String? Function(BuildContext, String?)? dogNameControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for dogAge widget.
  FocusNode? dogAgeFocusNode;
  TextEditingController? dogAgeController;
  String? Function(BuildContext, String?)? dogAgeControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DogsRecord? aiProfile;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dogNameFocusNode?.dispose();
    dogNameController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    dogAgeFocusNode?.dispose();
    dogAgeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
