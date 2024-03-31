import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var favoriteStar = false;
  var favoriteHeart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 12, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text(
          'now playing',
          style: TextStyle(
            color: Colors.white, // Change text color to white
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15.0,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
            color: Colors.white, // Change icon color to white
          ),
          IconButton(
            icon: Icon(
              favoriteStar ? Icons.star : Icons.star_border,
              color: Colors.white, // Change icon color to white
            ),
            onPressed: () {
              setState(() {
                favoriteStar = !favoriteStar;
              });
            },
          )
        ],
      ),
      body: Container(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image(
                      image: Song().albumCover,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * .8,
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                child: Expanded(
                    child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Song().title,
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                          ),
                          IconButton(
                            icon: Icon(
                              favoriteHeart
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                if (favoriteHeart)
                                  favoriteHeart = false;
                                else
                                  favoriteHeart = true;
                              });
                            },
                          )
                        ],
                      ),

                      Row(
                        children: [
                          Text(Song().singerName,
                          style: TextStyle(color: Color(0xFF16CFDE),
                          fontSize: 16.0,
                          ),
                          )
                        ],
                      ),

                      ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.grey,
                        valueColor: AlwaysStoppedAnimation(Color(0xFF16CFDE)),
                        value: .4,
                        // minHeight: 7.0,
                    
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('1:24',
                            style: TextStyle(color: Color(0xFF16CFDE)),),
                                                      Text(
                              '1:48',
                              style: TextStyle(color: Color(0xFF16CFDE)),
                            )
                          ],
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){},
                             icon: Icon(
                              Icons.arrow_back_ios_outlined,
                               color: Colors.white,
                              ),
                             ),

                                 IconButton(
                            onPressed: () {},
                            iconSize: 60.0,
                            icon: Icon(
                              Icons.play_circle_fill_sharp,
                              color: Colors.white,
                            ),
                          ),

                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                          ),


                          ],
                        )
                      
                    ],
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Song {
  String title = 'Only You';
  String singerName = 'Univas';
  AssetImage albumCover = AssetImage('assets/univas.jpeg');
}
