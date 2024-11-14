import 'package:flutter/material.dart';
import 'package:wisata_candi/widgets/profile_info_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //TODO 1: Deklarasikan variabel yg dibutuhkan
  bool isSignedin = true;
  String fullName = "Daffa Yudha Musyaffa";
  String username = "Daftones";
  int favoriteCandiCount = 0;

  //TODO 5: Implementasi fungsi signIn
  void signIn() {
    setState(() {
      isSignedin = !isSignedin;
    });
  }

  //TODO 6: Implementasi fungsi signOut
  void signOut() {
    setState(() {
      isSignedin = !isSignedin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //TODO 2: Buat bagian ProfileHeader berisi gambar
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200 - 50),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.deepPurple, width: 2),
                              shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage("images/placeholder_image.png"),
                          ),
                        ),
                        if (isSignedin)
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.camera_alt,
                                color: Colors.deepPurple[50]),
                          ),
                      ],
                    ),
                  ),
                ),

                //TODO 3: Buat bagian ProfileInfo
                SizedBox(height: 20),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                ProfileInfoItem(
                  icon: Icons.lock,
                  label: 'Pengguna',
                  value: username,
                  showEditIcon: isSignedin,
                  onEditPressed: () {
                    debugPrint('Icon edit ditekan ...');
                  },
                  iconColor: Colors.amber,
                ),
                SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                ProfileInfoItem(
                  icon: Icons.person,
                  label: 'Nama',
                  value: fullName,
                  showEditIcon: isSignedin,
                  onEditPressed: () {
                    debugPrint('Icon edit ditekan ...');
                  },
                  iconColor: Colors.blue,
                ),

                //TODO 4: Buat bagian profile action
                SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 20),
                ProfileInfoItem(
                  icon: Icons.favorite,
                  label: 'Favorit',
                  value: favoriteCandiCount > 0 ? '$favoriteCandiCount' : '',
                  iconColor: Colors.red,
                ),
                SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 20),
                isSignedin
                    ? TextButton(onPressed: signOut, child: Text('Sign Out'))
                    : TextButton(onPressed: signIn, child: Text('Sign In')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
