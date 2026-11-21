import 'package:flutter/material.dart';
import 'package:whats_app/model/massage.dart';
import 'package:whats_app/screens/home_screen/widgets/massage_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leadingWidth: 40,
          centerTitle: false,
          titleSpacing: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          backgroundColor: Color(0xff188c4b),
          title: Row(
            spacing: 15,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person),
              ),
              Text("Mohamed Makheemar", style: TextStyle(color: Colors.white)),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.videocam_off_outlined),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(height: 12,)
                },
                padding: EdgeInsets.all(16),
                itemCount: Massage.massages.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: "Type a Massage",
                        hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green, width: 1),
                        ),
                        prefixIcon: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(Icons.send, color: Colors.white),
                      ),
                    ),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.all(14),
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.mic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
