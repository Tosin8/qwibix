
import 'package:flutter/material.dart';

import 'curved_edges.dart';

class BCurvedEdgeWidget extends StatelessWidget {
  const BCurvedEdgeWidget({
    Key? key,
    this.child,
  }) : super(key: key);

final Widget? child; 
  @override
  Widget build(BuildContext context) {
    return ClipPath( 
      clipper: BCustomCurvedEdges(),
      child: child, 
    );
  }
}
