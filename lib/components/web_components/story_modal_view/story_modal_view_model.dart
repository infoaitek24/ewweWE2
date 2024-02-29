import '/components/web_components/stories/stories_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'story_modal_view_widget.dart' show StoryModalViewWidget;
import 'package:flutter/material.dart';

class StoryModalViewModel extends FlutterFlowModel<StoryModalViewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for stories component.
  late StoriesModel storiesModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    storiesModel = createModel(context, () => StoriesModel());
  }

  @override
  void dispose() {
    storiesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
