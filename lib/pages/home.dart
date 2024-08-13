import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Layouts",
          style: TextStyle(color: Colors.black26),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.cloud_queue))],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(children: [
        _buildJournalHeaderImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildJournalEntry(),
                Divider(),
                _buildJournalWeather(),
                Divider(),
                _buildJournalTags(),
                Divider(),
                _buildJournalFooterImages()
              ],
            ),
          ),
        )
      ]),
    );
  }

   Widget _buildJournalHeaderImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: AssetImage("assets/images/dawn.jpg"),
        fit: BoxFit.cover,
      ),
    );
  }


  Column _buildJournalEntry() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Birthday",
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
        Divider(),
        Text(
          "It is going to be a great birthday.We are going out for dinner at my favorite place, then watch a movie after we have gone to an the ice cream store",
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  Row _buildJournalWeather() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.wb_sunny),
        SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "81 Clear",
                  style: TextStyle(color: Colors.deepOrange),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Earth ,Africa, west Africa, Togo, Maritime, Adetikope",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        )
      ],
    );
  }

  Wrap _buildJournalTags() {
    return Wrap(
        spacing: 8.0,
        children: List.generate(
          7,
          (int index) {
            return Chip(
              label: Text(
                "Gift ${index + 1}",
                style: TextStyle(fontSize: 10.0),
              ),
              avatar: Icon(
                Icons.card_giftcard,
                color: Colors.blue.shade300,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(color: Colors.grey),
              ),
              backgroundColor: Colors.grey.shade100,
            );
          },
        ));
  }

  Row _buildJournalFooterImages() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/tree.jpg"),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/mountain.jpg"),
          radius: 40.0,
        ),
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/home_top_mountain.jpg"),
          radius: 40.0,
        ),
        SizedBox(
          width: 100.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.cake),
              Icon(Icons.star_border),
              Icon(Icons.music_note)

          ],
          ),
        )
      ],
    );
  }
}
