import 'package:flutter/material.dart';
import 'package:prototype_app/components/filled_outline_button.dart';
import 'package:prototype_app/screens/chats/component/Body.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('To do'),
      ),
      body: Body(),
    );
  }
}
