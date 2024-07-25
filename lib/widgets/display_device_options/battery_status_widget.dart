import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class BatteryStatusWidget extends StatefulWidget {
  bool isExpanded;
  double padding;

  BatteryStatusWidget({required this.isExpanded, required this.padding});

  @override
  _BatteryStatusWidgetState createState() => _BatteryStatusWidgetState();
}

class _BatteryStatusWidgetState extends State<BatteryStatusWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 49, 50, 50), // Background color
          borderRadius: BorderRadius.circular(12.0), // Border radius
        ),
        padding: EdgeInsets.all(widget.padding),
        child: widget.isExpanded
            ? Column(
                children: [
                  //SizedBox(height: 16.0), // Add vertical spacing
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      const Icon(
                        Icons.battery_5_bar,
                        color: Colors.white,
                        size: 50.0,
                      ),
                      Container(padding: EdgeInsets.only(right: 8.0)),
                      Text(
                        '[placeHolder] days\n Time to Empty',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),

                  // Add more details here
                ],
              )
            : Container(),
      ),
    );
  }
}
