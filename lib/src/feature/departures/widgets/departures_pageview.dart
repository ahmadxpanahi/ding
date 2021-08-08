import 'package:ding/src/feature/departures/widgets/device_page.dart';
import 'package:ding/src/feature/departures/widgets/location_page.dart';
import 'package:flutter/material.dart';

class DeparturesPageView extends StatefulWidget {
  final PageController controller;

  const DeparturesPageView(this.controller, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DeparturesPageViewState();
}

class _DeparturesPageViewState extends State<DeparturesPageView>
    with AutomaticKeepAliveClientMixin<DeparturesPageView> {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return PageView(
      controller: widget.controller,
      children: [DevicePage(), LocationPage()],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
