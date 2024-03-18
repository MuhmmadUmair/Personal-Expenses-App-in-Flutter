import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdapativeflatButton extends StatelessWidget {
  final String text;
  final Function()? handler;

  const AdapativeflatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    // return Platform.isIOS
    //     ? CupertinoButton(
    //         child: Text(
    //           text,
    //           style: TextStyle(fontWeight: FontWeight.bold),
    //         ),
    //         onPressed: () => handler,
    //       ) :
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Theme.of(context).primaryColor,
      ),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onPressed: handler,
    );
  }
}
