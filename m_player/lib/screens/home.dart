import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_player/consts/colors.dart';
import 'package:m_player/consts/text_style.dart';
import 'package:m_player/controller/player_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var controller = Get.put(PlayerController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgDarkColor,
        appBar: AppBar(
          backgroundColor: bgDarkColor,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: whiteColor,
                )),
          ],
          leading: const Icon(
            Icons.sort_rounded,
            color: whiteColor,
          ),
          //  backgroundColor: Colors.amber,
          title: Text(
            'Music Player',
            style: ourStyle(size: 18),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                // clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.only(bottom: 4),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(12),
                // ),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  tileColor: bgColor,
                  title: Text(
                    'Music Name',
                    style: ourStyle(size: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Artist Name',
                    style: ourStyle(size: 12),
                  ),
                  leading: const Icon(
                    Icons.music_note,
                    color: whiteColor,
                    size: 32,
                  ),
                  trailing: const Icon(
                    Icons.play_arrow,
                    color: whiteColor,
                    size: 26,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
