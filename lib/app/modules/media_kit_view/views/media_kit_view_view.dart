import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../controllers/media_kit_view_controller.dart';

class MediaKitViewView1 extends StatefulWidget {
  const MediaKitViewView1({super.key});

  @override
  State<MediaKitViewView1> createState() => MediaKitViewViewState();
}

class MediaKitViewViewState extends State<MediaKitViewView1> {
  final controller = Get.put(MediaKitViewController());
  late final player = Player(configuration: const PlayerConfiguration());

  // Create a [VideoController] to handle video output from [Player].
  late final videoController = VideoController(player);

  @override
  void initState() {
    super.initState();
    // Play a [Media] or [Playlist].
    player.open(
        Media(
            'rtsp://admin:123asdfg@185.190.23.227:555/cam/realmonitor?channel=1&subtype=0'),
        play: true
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Video(controller: videoController),
                  ),
                  const SizedBox(width: 24.0),
                  Expanded(
                      // child: Video(controller: videoController),
                      child: Container(color: Colors.blueGrey)),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      // child: Video(controller: videoController),
                      child: Container(color: Colors.blueGrey)),
                  const SizedBox(width: 24.0),
                  Expanded(
                      // child: Video(controller: videoController),
                      child: Container(color: Colors.blueGrey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MediaKitViewView extends StatefulWidget {


  const MediaKitViewView(  {super.key});

  @override
  State<MediaKitViewView> createState() => _VideoStreamRTSPState();
}

class _VideoStreamRTSPState extends State<MediaKitViewView> {
  late final player = Player();
  late final controller = VideoController(player);

  @override
  void initState() {
    MediaKit.ensureInitialized();
    super.initState();
  }

  openPlayer(){
    player.open(Media('rtsp://admin:123asdfg@185.190.23.227:555/cam/realmonitor?channel=1&subtype=0'),play: true);
    player.play();
  }


  @override
  void dispose() {
    player.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    openPlayer();

    return LayoutBuilder(builder: (context, constrains){
      return Center(
        child: Stack(
          children: [
            SizedBox(
                height: 150,
                width: constrains.maxWidth,
                child: Video(
                    controller: controller,
                    controls: null
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){
                  dispose();
                },
                  icon: const Icon(Icons.close),
                )
              ],
            ),
          ],
        ),
      );
    }
    );
  }
}