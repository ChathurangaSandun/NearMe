import 'package:flutter/material.dart';
import 'package:nearme/helper/ui_helper.dart';
import 'package:nearme/models/person.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class DetailPage extends StatelessWidget {
  final Person person;
  BuildContext scaffoldContext;

  DetailPage({this.person});

  @override
  Widget build(BuildContext context) {
    final Color color1 = Color(0xFF59C2FF);
    final Color color2 = Color(0xFF1270E3);
    //final String image = avatars[0];
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0)),
                      gradient: LinearGradient(colors: [
                        color1,
                        color2,
                      ])),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 80),
                  child: Column(
                    children: <Widget>[
                      Text(
                        this.person.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: screenHeight * 0.5,
                              width: double.infinity,
                              margin: const EdgeInsets.only(
                                  left: 30.0, right: 30.0, top: 10.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: Image.network(
                                    "https://asiasociety.org/sites/default/files/styles/1200w/public/G/gcen_0.png?itok=AqwLP8yc",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              alignment: Alignment.topCenter,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5.0),
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text("3.7mi away"),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        this.person.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 16.0,
                            color: Colors.grey,
                          ),
                          Text(
                            this.person.address,
                            style: TextStyle(color: Colors.grey.shade600),
                          )
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            color: Colors.grey,
                            icon: Icon(FontAwesomeIcons.instagram),
                            onPressed: () {
                              showSnackBar(this.scaffoldContext);
                            },
                          ),
                          IconButton(
                            color: Colors.grey,
                            icon: Icon(FontAwesomeIcons.facebookF),
                            onPressed: () {
                              showSnackBar(this.scaffoldContext);
                            },
                          ),
                          IconButton(
                            color: Colors.grey.shade600,
                            icon: Icon(FontAwesomeIcons.twitter),
                            onPressed: () {
                              showSnackBar(this.scaffoldContext);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 16.0),
                              margin: const EdgeInsets.only(
                                  top: 30,
                                  left: 20.0,
                                  right: 20.0,
                                  bottom: 20.0),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    color2,
                                    color1,
                                  ]),
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                    color: Colors.white,
                                    icon: Icon(Icons.navigation),
                                    onPressed: () {
                                      showSnackBar(this.scaffoldContext);
                                    },
                                  ),
                                  IconButton(
                                    color: Colors.white,
                                    icon: Icon(Icons.email),
                                    onPressed: () {
                                      UrlLauncher.launch(
                                          'mailto:wacsk19921002@gmail.com');
                                    },
                                  ),
                                  Spacer(),
                                  IconButton(
                                    color: Colors.white,
                                    icon: Icon(Icons.message),
                                    onPressed: () {
                                      UrlLauncher.launch(
                                          'sms::${this.person.mobile.toString()}');
                                    },
                                  ),
                                  IconButton(
                                    color: Colors.white,
                                    icon: Icon(Icons.add_call),
                                    onPressed: () {
                                      showSnackBar(this.scaffoldContext);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: FloatingActionButton(
                                child: Icon(
                                  Icons.call,
                                  color: Colors.green,
                                ),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  print('dfdfd');
                                  UrlLauncher.launch(
                                      'tel:${this.person.mobile.toString()}');
                                },
                              ),
                            ),
                            new Builder(builder: (BuildContext context) {
                              scaffoldContext = context;
                              return new Center();
                            })
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text("Person Details"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: Text('Not Implemented yet!'),
      action: SnackBarAction(
        label: "Cancel",
        onPressed: () {},
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
