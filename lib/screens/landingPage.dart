import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:campusell_v2/screens/NavDrawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4CA7F8),
        elevation: 0,
        // title: const Text(
        //   "Campusell",
        //   style: TextStyle(
        //       fontSize: 20.0, fontWeight: FontWeight.bold, letterSpacing: 2, fontStyle: FontStyle.italic),
        // ),
        actions: <Widget>[

          IconButton(
            icon: Icon(Icons.bookmark),
            tooltip: 'Saved Product',
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => BookMarks()),
              // );
            },
          ),

          IconButton(
            icon: Icon(Icons.notifications),
            tooltip: 'Notification',
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ChatBox()),
              // );
            },
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(

                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                    color: Color(0xff4CA7F8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(

                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: <Widget>[

                                Image.asset(

                                  "assets/logo2.png",
                                  height: 30,
                                  //width: MediaQuery.of(context).size.width,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text("Campusell",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),

                              ]
                          ),
                        ),

                        const SizedBox(
                          height: 35.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("going to search screen");
                            // showSearch(
                            //     context: context,
                            //     delegate: SearchProduct(category: ""));
                          },
                          child: Container(
                            height: 48.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              children: const <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Icon(
                                    Icons.search,
                                    size: 30.0,
                                  ),
                                ),
                                Text(
                                  "Search Here .....",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    )),

                //for testing purpose
                // GestureDetector(
                //   onTap: () {
                //     signout(authNotifier);
                //     Navigator.of(context)
                //         .pushNamedAndRemoveUntil('/login', (route) => false);
                //     _clearUser();
                //   },
                //   child: Text(
                //     "Sign Out",
                //     style: TextStyle(fontSize: 30.0),
                //   ),
                // ),

                //end testing purpose
                const SizedBox(height: 10.0,),

                const Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 15, 15.0, 5.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => OnlyCategoryProductScreen(
                          //           category: "Book")),
                          // );
                        },
                        child: Image.asset(
                          'assets/image1.png',
                          height: 80.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => OnlyCategoryProductScreen(
                          //           category: "Clothes")),
                          // );
                        },
                        child: Image.asset(
                          'assets/image1.png',
                          height: 80.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => OnlyCategoryProductScreen(
                          //           category: "Note")),
                          // );
                        },
                        child: Image.asset(
                          'assets/image1.png',
                          height: 80.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => OnlyCategoryProductScreen(
                          //           category: "Other")),
                          // );
                        },
                        child: Image.asset(
                          'assets/image1.png',
                          height: 80.0,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Newly Added",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      // Text(
                      //   "See More",
                      //   style: TextStyle(
                      //     color: sc_ItemTitleColor,
                      //     fontWeight: FontWeight.w500,
                      //     fontSize: 18.0,
                      //   ),
                      //   textAlign: TextAlign.end,
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // StreamBuilder(
          //     stream: Firestore.instance
          //         .collection("post")
          //         .orderBy('postedAt', descending: true)
          //         .limit(5)
          //         .snapshots(),
          //     builder: (context, snapshot) {
          //       if (!snapshot.hasData) {
          //         print("NO DATA***********************");
          //         return SliverToBoxAdapter(
          //             child: Center(
          //                 child: CircularProgressIndicator(
          //                   valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          //                 )));
          //         // ));
          //       } else {
          //         return SliverList(
          //           delegate: SliverChildBuilderDelegate((context, index) {
          //             print(
          //                 "Home :Posted At: ${snapshot.data.documents[index]["postedAt"]}");
          //
          //             return ProductItem(
          //               data: snapshot.data.documents[index],
          //             );
          //           }, childCount: snapshot.data.documents.length),
          //         );
          //       }
          //     })
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => AddProuctScreen()),
            // );
            print("go to add product screen");
          },
          child: Icon(Icons.add),
          backgroundColor: Color(0xff4CA7F8)),
      drawer: NavDrawer(),
    );
  }

}