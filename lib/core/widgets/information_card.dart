import 'package:bako_gerencial/core/colors.dart';
import 'package:flutter/material.dart';

enum TypeOfCard { information, error, success }

class InformationCard extends StatefulWidget {
  final Widget child;
  final TypeOfCard type;
  final Duration duration;
  final EdgeInsetsGeometry margin;
  InformationCard(
      {Key? key,
      required this.child,
      required this.type,
      required this.duration,
      this.margin = const EdgeInsets.all(0)})
      : super(key: key);

  @override
  _InformationCardState createState() => _InformationCardState();
}

class _InformationCardState extends State<InformationCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.type == TypeOfCard.information) {
      return Container(
        margin: widget.margin,
        padding:
            EdgeInsetsDirectional.only(start: 15, top: 10, end: 10, bottom: 10),
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                stops: [0.027, 0.027],
                colors: [informationColor, Colors.white]),
            borderRadius: new BorderRadius.all(const Radius.circular(10)),
            boxShadow: [BoxShadow(color: informationColor, spreadRadius: 1)]),
        child: widget.child,
      );
    } else if (widget.type == TypeOfCard.error) {
      return Container(
        margin: widget.margin,
        padding:
            EdgeInsetsDirectional.only(start: 15, top: 10, end: 10, bottom: 10),
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                stops: [0.027, 0.027], colors: [errorColor, Colors.white]),
            borderRadius: new BorderRadius.all(const Radius.circular(10)),
            boxShadow: [BoxShadow(color: errorColor, spreadRadius: 1)]),
        child: widget.child,
      );
    } else {
      return Container(
        margin: widget.margin,
        padding:
            EdgeInsetsDirectional.only(start: 15, top: 10, end: 10, bottom: 10),
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                stops: [0.027, 0.027], colors: [successColor, Colors.white]),
            borderRadius: new BorderRadius.all(const Radius.circular(10)),
            boxShadow: [BoxShadow(color: successColor, spreadRadius: 1)]),
        child: widget.child,
      );
    }
  }
}
