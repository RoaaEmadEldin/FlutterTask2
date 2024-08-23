import 'package:flutter/material.dart';
import 'package:task2/app_consts.dart';
import 'package:task2/user.dart';

class BodyWidget extends StatelessWidget {
  final User user;

  const BodyWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("${user.profileImage}"),
            ),
          ),
      
          Text(
            '@${user.username}',
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
      
          Text(
            user.name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            user.address,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
      
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        '220',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text('Followers', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        '150',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text('Following', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Icon(Icons.language)),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Icon(Icons.camera_alt)),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Icon(Icons.facebook)),
            ],
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    '200 shots',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  Text(
                    '10 Collections',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),

          Container(
            padding: const EdgeInsets.only(top: 5.0),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
                '${assetsImagePath}body_image.jpg'), // replace with actual image
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text('Donate'),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text('Message'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
