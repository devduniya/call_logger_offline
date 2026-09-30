import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WhatsAppSlidableAction extends StatelessWidget {
  const WhatsAppSlidableAction({
    super.key,
    required this.onPressed,
  });

  final SlidableActionCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomSlidableAction(
      flex: 1,
      backgroundColor: const Color.fromARGB(255, 37, 211, 102),
      foregroundColor: Colors.white,
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
          const SizedBox(height: 4),
          const Text('WA', overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
