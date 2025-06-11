import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/MobileView.dart';
import 'package:responsive_ui/TabletView.dart';

class MyResponsivePage extends StatelessWidget {
  const MyResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Safe Area Responsive Layout')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
            builder: (context, constraints) {
              // Use constraints and orientation to build your layout
              if (constraints.maxWidth < 600) {
                // Small screen
               /* if (orientation == Orientation.portrait) {
                  return Column(
                    children: [
                      // Text('Portrait Mode - Small Screen'), // For debugging
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                          child: Text('Portrait < 600px\nWidth: ${constraints.maxWidth.toStringAsFixed(2)}\nHeight: ${constraints.maxHeight.toStringAsFixed(2)}'),
                        ),
                      ),
                    ],
                  );
                } else { // Landscape
                  return Row(
                    children: [
                      // Text('Landscape Mode - Small Screen'), // For debugging
                      Expanded(
                        child: Container(
                          color: Colors.green,
                          alignment: Alignment.center,
                          child: Text('Landscape < 600px\nWidth: ${constraints.maxWidth.toStringAsFixed(2)}\nHeight: ${constraints.maxHeight.toStringAsFixed(2)}',),
                        ),
                      ),
                    ],
                  );
                }*/
                return MobileView();
              } else {
                // Large screen (>= 600px)
               /* if (orientation == Orientation.portrait) {
                  return Container( // No need for Column/Expanded if it's the only child taking full space
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text('Portrait >= 600px\nWidth: ${constraints.maxWidth.toStringAsFixed(2)}\nHeight: ${constraints.maxHeight.toStringAsFixed(2)}'),
                  );
                } else { // Landscape
                  return Container( // No need for Row/Expanded here either
                    color: Colors.purple,
                    alignment: Alignment.center,
                    child: Text('Landscape >= 600px\nWidth: ${constraints.maxWidth.toStringAsFixed(2)}\nHeight: ${constraints.maxHeight.toStringAsFixed(2)}'),
                  );
                }*/
                return TabletView();
              }
            },
          );
        },
      ),
    );
  }
}