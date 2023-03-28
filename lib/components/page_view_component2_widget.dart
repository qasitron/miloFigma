import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_view_component2_model.dart';
export 'page_view_component2_model.dart';

class PageViewComponent2Widget extends StatefulWidget {
  const PageViewComponent2Widget({Key? key}) : super(key: key);

  @override
  _PageViewComponent2WidgetState createState() =>
      _PageViewComponent2WidgetState();
}

class _PageViewComponent2WidgetState extends State<PageViewComponent2Widget> {
  late PageViewComponent2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageViewComponent2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
      child: Container(
        width: 300.0,
        height: 200.0,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
              child: PageView(
                controller: _model.pageViewController ??=
                    PageController(initialPage: 0),
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(
                    'assets/images/Rectangle_9ad1.png',
                    width: 363.0,
                    height: 183.0,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/seed/574/600',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/seed/951/600',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: smooth_page_indicator.SmoothPageIndicator(
                  controller: _model.pageViewController ??=
                      PageController(initialPage: 0),
                  count: 3,
                  axisDirection: Axis.horizontal,
                  onDotClicked: (i) {
                    _model.pageViewController!.animateToPage(
                      i,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  effect: smooth_page_indicator.SlideEffect(
                    spacing: 8.0,
                    radius: 16.0,
                    dotWidth: 10.0,
                    dotHeight: 10.0,
                    dotColor: Colors.black,
                    activeDotColor: Color(0xFFF8FD08),
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
