import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

//Need to explore

/*
First (or Login) Screen
*/
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget promoSection = Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 7),
      child: Column(
        children: [
          Image.asset('assets/images/login_logo.png'),
          const Text(
            'Morning begins with Starbucks coffee',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            promoSection,
            const SizedBox(
              height: 60,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AuthScreen()));
              },
              icon: const Icon(Icons.email),
              label: const Text('Login With Email'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
                backgroundColor: const Color(0xff00A6442),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.facebook),
              label: const Text('Login With Facebook'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
                backgroundColor: const Color(0xff0866FF),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.network('https://www.google.com/favicon.ico'),
              label: const Text('Login With Google'),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  backgroundColor: Color(0xffFFFFFFF),
                  foregroundColor: Color(0xff000000)),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.network('https://www.apple.com/favicon.ico'),
              label: const Text('Login With Apple'),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  backgroundColor: Color(0xffffffff),
                  foregroundColor: Color(0xff000000)),
            ),
          ],
        ),
      ),
    );
  }
}

/*
The second screen

ApplicationBar is a custom created appBar that contains two texts and two icons
*/

Widget MyOwnNavigationBar = Container(
  padding: EdgeInsets.all(20),
  child: const Row(
    children: [
      Column(
        children: [
          Text(
            "Good Morning",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "User",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
      Spacer(),
      Column(
        children: [
          Row(
            children: [Icon(Icons.shopping_bag), Icon(Icons.list)],
          ),
        ],
      )
    ],
  ),
);

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget SearchBar = Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70),
        ),
        shadowColor: Colors.black,
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          height: 50,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "|",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
              SizedBox(width: 5),
              Text("Seach beverages of foods"),
              SizedBox(width: 100),
              Icon(Icons.search),
            ],
          ),
        ),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [MyOwnNavigationBar, SearchBar],
          ),
        ),
      ),
    );
  }
}

/*
* Code for Auth Screen
*
* */

 Widget AuthHeaderText = Container(
  padding: const EdgeInsets.only(left: 15, top: 15),
  child: const
  Column(
    children: [
          Align(
            alignment: Alignment.topLeft,
            child:
            Text("Sign In", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child:
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"),
          )
        ],
      ),
);


class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Widget AuthBox = Container(
      child: Column(
        children: [
        //TODO("FINISH THIS FUCKING SHIT")

          ElevatedButton.icon( onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePageScreen()));
          },
              icon: Icon(Icons.login), label: Text("PROVIDE ME TO HOMESCREEN"))
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "STARBUCKS",
            style: TextStyle(color: Color(0xff0A6442)),
          )),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            AuthHeaderText,
            AuthBox
          ],
        ),
      ),
    );
  }
}
