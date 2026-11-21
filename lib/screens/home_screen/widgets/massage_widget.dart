import 'package:flutter/material.dart';

class MassageWidget extends StatelessWidget {
  const MassageWidget({super.key, required this.massage});
  final Massage massage;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: massage.isSender ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * .75,
        ),
        decoration: BoxDecoration(
          color: massage.isSender ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
            topRight: Radius.circular(16),
            topLeft: massage.isSender ? Radius.circular(16) : Radius.circular(0),
          ),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: massage.isSender
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            if (massage.text != null)
              Text(massage.text!, style: TextStyle(color: Colors.white, fontSize: 16)),
            if (massage.imagePath != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(massage.imagePath!),
              ),
          ],
        ),
      ),
    );
  }
}
