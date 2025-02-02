import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trade_connect/services/auth_service.dart';
import 'package:trade_connect/services/socket_service.dart';

class ChatRoomScreen extends StatefulWidget {
  final String roomId;
  final String otherUserId;

  ChatRoomScreen({required this.roomId, required this.otherUserId});

  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final _messageController = TextEditingController();
  final _socketService = SocketService();
  final List<ChatMessage> _messages = [];

  @override
  void initState() {
    super.initState();
    _socketService.connectSocket(widget.roomId);
    _socketService.getMessages().listen((message) {
      setState(() {
        _messages.add(ChatMessage.fromJson(json.decode(message)));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('채팅')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ChatBubble(message: _messages[index]);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: '메시지를 입력하세요',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      _socketService.sendMessage(json.encode({
        'text': _messageController.text,
        'senderId': context.read<AuthService>().currentUser?.id,
        'timestamp': DateTime.now().toIso8601String(),
      }));
      _messageController.clear();
    }
  }
} 