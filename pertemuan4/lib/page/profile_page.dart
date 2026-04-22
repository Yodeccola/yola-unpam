import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // STACK: COVER + FOTO PROFILE
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // COVER
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1504385851258-9c3b6c5f2d6e",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // FOTO PROFILE (NEMPEL KE COVER)
                Positioned(
                  bottom: -50,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1527980965255-d3b416303d12",
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 60),

            // NAMA
            Text(
              "Annisa Gladiyola Duriyat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 8),

            // LOKASI / DESKRIPSI
            Text("Jakarta, Indonesia", style: TextStyle(color: Colors.grey)),

            SizedBox(height: 5),

            Text("Mahasiswa Informatika", style: TextStyle(color: Colors.grey)),

            SizedBox(height: 25),

            // CARD STATISTIK
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Project",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("16"),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          "Followers",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("2308"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}