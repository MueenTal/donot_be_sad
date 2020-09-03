import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoSAd extends StatefulWidget {
  @override
  _VideoSAdState createState() => _VideoSAdState();
}

class _VideoSAdState extends State<VideoSAd> {
  VideoPlayerController _controller1;
  Future<void> _initializeVideoPlayerFuture1;
  VideoPlayerController _controller2;
  Future<void> _initializeVideoPlayerFuture2;
  VideoPlayerController _controller3;
  Future<void> _initializeVideoPlayerFuture3;

  @override
  void initState() {
    //1
    _controller1 = VideoPlayerController.asset("assets/videos/a1.mp4");
    _initializeVideoPlayerFuture1 = _controller1.initialize();
    _controller1.setLooping(true);
    _controller1.setVolume(1.0);

    //2
    _controller2 = VideoPlayerController.asset("assets/videos/a2.mp4");
    _initializeVideoPlayerFuture2 = _controller2.initialize();
    _controller2.setLooping(true);
    _controller2.setVolume(1.0);

    //3
    _controller3 = VideoPlayerController.asset("assets/videos/a3.mp4");
    _initializeVideoPlayerFuture3 = _controller3.initialize();
    _controller3.setLooping(true);
    _controller3.setVolume(1.0);

    super.initState();
  }

  @override
  void dispose() {
    //1
    _controller1.pause();

    //2
    _controller2.pause();
    //3
    _controller3.pause();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: Text(
              "لكل مهموم",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Changa'),
            ),
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.teal[400],
                  Colors.teal.shade500,
                ])),
              ),
              ListView(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      ' "وَمَا لَنَا أَلَّا نَتَوَكَّلَ عَلَى اللَّه"    ❤',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: FutureBuilder(
                        future: _initializeVideoPlayerFuture1,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return AspectRatio(
                              aspectRatio: _controller1.value.aspectRatio,
                              child: VideoPlayer(_controller1),
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.white,
                                    Colors.white,
                                    Colors.white,
                                  ])),
                          child: FlatButton(
                            child: Icon(
                              _controller1.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              color: Colors.teal,
                            ),
                            onPressed: () {
                              setState(() {
                                if (_controller2.value.isPlaying) {
                                  _controller2.pause();
                                  _controller1.play();
                                } else if (_controller3.value.isPlaying) {
                                  _controller3.pause();
                                  _controller1.play();
                                } else {
                                  if (_controller1.value.isPlaying) {
                                    _controller1.pause();
                                  } else {
                                    _controller1.play();
                                  }
                                }
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '  "وَاتْلُ عَلَيْهِمْ نَبَأَ ابْراهيم"   ❤',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: FutureBuilder(
                        future: _initializeVideoPlayerFuture2,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return AspectRatio(
                              aspectRatio: _controller2.value.aspectRatio,
                              child: VideoPlayer(_controller2),
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.white,
                                Colors.white,
                              ])),
                      child: FlatButton(
                        child: Icon(
                          _controller2.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.teal,
                        ),
                        onPressed: () {
                          setState(() {
                            if (_controller1.value.isPlaying) {
                              _controller1.pause();
                              _controller2.play();
                            } else if (_controller3.value.isPlaying) {
                              _controller3.pause();
                              _controller2.play();
                            } else {
                              if (_controller2.value.isPlaying) {
                                _controller2.pause();
                              } else {
                                _controller2.play();
                              }
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      ' "وَلَا تَحْسَبَنَّ اللَّهَ غَافِلًا عَمَّا يَعْمَلُ الظَّالِمُونَ"     ❤',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: FutureBuilder(
                        future: _initializeVideoPlayerFuture3,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return AspectRatio(
                              aspectRatio: _controller3.value.aspectRatio,
                              child: VideoPlayer(_controller3),
                            );
                          } else {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.white,
                                Colors.white,
                                Colors.white,
                              ])),
                      child: FlatButton(
                        child: Icon(
                          _controller3.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.teal,
                        ),
                        onPressed: () {
                          setState(() {
                            if (_controller1.value.isPlaying) {
                              _controller1.pause();
                              _controller3.play();
                            } else if (_controller2.value.isPlaying) {
                              _controller2.pause();
                              _controller3.play();
                            } else {
                              if (_controller3.value.isPlaying) {
                                _controller3.pause();
                              } else {
                                _controller3.play();
                              }
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ExpansionTile(
                    backgroundColor: Colors.teal[400],
                    title: Text(
                      " لَا يُكلف الله نفساً إلا وِسعهَا  ❤",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "يا رحمة الله بنا!",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "   الله لا يثقلك بمَ تعجز بل بمَ تقدر، تغيب كل الأشياء عنك وهو عنكَ لا يغيب، يقويك بشوكةٍ تكسرك، ويجعلك تنهزم اليوم لتنتصر في الغد، الله يجبرك، يرممك، ويُنسيك "
                          "يُوجدك من العدم إذ تلطَّف بك، وإذا غرقت وحده ينجيك، يُحبك وان ابتعدت عنه فيبتليك لتعود أقرب إليه من جديد. ",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "  سُبحانه من لنا سواه ❤ ",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "   اللهم ولك الحب ❤    ",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
