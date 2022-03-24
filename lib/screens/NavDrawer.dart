
import 'package:campusell_v2/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawer createState() => _NavDrawer();
}

class _NavDrawer extends State<NavDrawer> {
  // User _user;
  // String _imageUrl, _name = "Name", _email = "Email";

  // void getDetails() async {
  //   FirebaseUser user = await FirebaseAuth.instance.currentUser();
  //   DocumentSnapshot profile = await getProfile(user.uid);
  //   setState(() {
  //     _imageUrl = profile.data["imageUrl"];
  //     _name = profile.data["name"];
  //     _email = profile.data["email"];
  //   });
  // }

  // @override
  // void initState() {
  //   // getDetails();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // AuthNotifier _authNotifier =
    //     Provider.of<AuthNotifier>(context, listen: true);
    // _imageUrl = _authNotifier.imageUrl;
    // _name = _authNotifier.name;
    // _email = _authNotifier.email;
    // print("Auth notifier : ${_authNotifier.email}");
    // print("image: ${_imageUrl}");
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(

            decoration: const BoxDecoration(
              // backgroundBlendMode: BlendMode.colorDodge, //Don't what this does?
              color: Color(0xff4CA7F8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[

                CircleAvatar(

                  radius: 45.0,
                  // backgroundImage: NetworkImage(
                  //   _authNotifier.imageUrl == null
                  //       ? "https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg"
                  //       : _authNotifier.imageUrl,
                  // ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 5.0),
                  child: Text("Wendy",
                    // _authNotifier.name == null ? "Name" : _authNotifier.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      letterSpacing: 2.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => ChatBox()));
            },
            leading: const Icon(Icons.dashboard_outlined),
            title: const Text("My Dashboard"),
          ),
          ListTile(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => MyProducts()));
            },
            title: Text("Saved Items"),
            leading: Icon(Icons.add_to_photos),
          ),

          ListTile(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => SettingScreen()));
            },
            title: Text("Settings"),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => BookMarks()));
            },
            title: Text("Help"),
            leading: Icon(Icons.help_outline),
          ),

          //SizedBox(height: 100,),

          ListTile(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => BookMarks()));
            },
            title: Text("Logout", style: TextStyle(
              color: Color(0xffFFB041),
            ),),
            leading: Icon(Icons.login_outlined,
            color: Color(0xffFFB041),),
          ),
        ],
      ),
    );
  }
}
