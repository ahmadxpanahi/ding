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
  void didUpdateWidget(covariant DeparturesPageView oldWidget) {
    super.didUpdateWidget(oldWidget);

    print("DeparturesPageView -- didUpdateWidget()");
  }

  @override
  void dispose() {
    super.dispose();
    print("DeparturesPageView -- dispose()");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("DeparturesPageView -- deactivate()");
  }

  @override
  bool get wantKeepAlive => true;
}
