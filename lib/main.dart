import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player/music_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MusicApp(),
    );
  }
}

class MusicApp extends StatefulWidget {
  const MusicApp({super.key});

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  List musics = [
    {
      "index": 0,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Wilder Montgomery",
      "title": "cillum",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 1,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Rae Patterson",
      "title": "cupidatat",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Salar%20Aghili%20-%20Vatan.mp3"
    },
    {
      "index": 2,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Mcdowell Black",
      "title": "ex",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 3,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Snyder Miller",
      "title": "sit",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 4,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "James Levine",
      "title": "aliquip",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 5,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Valeria Alvarez",
      "title": "ullamco",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 6,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Langley Osborne",
      "title": "Lorem",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 7,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "House Klein",
      "title": "deserunt",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 8,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Durham Finch",
      "title": "consectetur",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 9,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Noreen Baldwin",
      "title": "irure",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 10,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Ramos Kelley",
      "title": "aute",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 11,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Brooks Santiago",
      "title": "reprehenderit",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 12,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Schmidt Bailey",
      "title": "culpa",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 13,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Wong Medina",
      "title": "et",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    },
    {
      "index": 14,
      "cover":
          "https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg",
      "singer": "Franco Whitfield",
      "title": "ut",
      "url":
          "https://dl.sultanmusic.ir/music/1401/7/1/Shervin%20-%20Bahar%20Omad.mp3"
    }
  ];

  String currentTitle = '';
  String currentSinger = '';
  String currentcover =
      'https://sultanmusic.ir/wp-content/uploads/2022/10/Shervin-Bahar-Omad.jpg';
  IconData playPuaseIcon = Icons.play_arrow;

  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  String currentSong = '';

  Duration duration = const Duration();
  Duration position = const Duration();

  void playMusic(String url) async {
    if (isPlaying && currentSong != url) {
      await audioPlayer.stop();
    }
    await audioPlayer.setSourceUrl(url);
    audioPlayer.setVolume(1);
    await audioPlayer.resume();
    setState(() {
      currentSong = url;
      isPlaying = true;
      playPuaseIcon = Icons.pause;
    });

    audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        duration = event;
      });
    });

    audioPlayer.onPositionChanged.listen((event) {
      setState(() {
        position = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF393E46),
      appBar: AppBar(title: const Text('Music Player')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: musics.length,
              itemBuilder: ((context, index) => MusicItem(
                  ontap: () {
                    playMusic(musics[index]['url']);
                    setState(() {
                      currentTitle = musics[index]['title'];
                      currentSinger = musics[index]['singer'];
                      currentcover = musics[index]['cover'];
                    });
                  },
                  title: musics[index]['title'],
                  singer: musics[index]['singer'],
                  cover: musics[index]['cover'])),
            ),
          ),
          Container(
              decoration: const BoxDecoration(
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Slider.adaptive(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) => {},
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            constraints: const BoxConstraints(
                                maxHeight: 80, maxWidth: 80),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                    image: NetworkImage(currentcover))),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text(currentSinger), Text(currentTitle)],
                          ),
                          IconButton(
                            onPressed: () async => {
                              if (isPlaying)
                                {
                                  isPlaying = false,
                                  await audioPlayer.pause(),
                                  setState(() {
                                    playPuaseIcon = Icons.play_arrow;
                                  })
                                }
                              else
                                {
                                  isPlaying = true,
                                  await audioPlayer.setSourceUrl(currentSong),
                                  await audioPlayer.resume(),
                                  setState(() {
                                    playPuaseIcon = Icons.pause;
                                  })
                                }
                            },
                            icon: Icon(playPuaseIcon),
                          )
                        ]),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
