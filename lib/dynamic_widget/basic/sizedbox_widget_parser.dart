import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/widgets.dart';

//Creates a box that will become as large as its parent allows.
class ExpandedSizedBoxWidgetParser extends WidgetParser {
  @override
  bool forWidget(String widgetName) {
    return "ExpandedSizedBox" == widgetName;
  }

  @override
  Widget parse(Map<String, dynamic> map, ClickListener listener) {
    return SizedBox.expand(
      child: DynamicWidgetBuilder.buildFromMap(map["child"], listener),
    );
  }
}

class SizedBoxWidgetParser extends WidgetParser {
  @override
  bool forWidget(String widgetName) {
    return "SizedBox" == widgetName;
  }

  @override
  Widget parse(Map<String, dynamic> map, ClickListener listener) {
    return SizedBox(
      width: map["width"],
      height: map["height"],
      child: DynamicWidgetBuilder.buildFromMap(map["child"], listener),
    );
  }
}
