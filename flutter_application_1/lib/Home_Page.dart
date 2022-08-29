import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_Controller.dart';

// // ignore: use_key_in_widget_constructors
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.of(context);
//     // final theme = Theme.of(context);

//     return Scaffold(
//       appBar: AppBar(title: Text("Home")),
//       body: Center(
//         child: Text("Flutterando ${controller.value}"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           controller.incremenet();
//         },
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var counter = 0;
  final controller = TextEditingController();
  final list = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/imgs/background.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.60),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            // Container(
            //   color: Colors.blue,
            //   height: 100,
            //   width: 100,
            // ),
            // Container(
            //   color: Colors.green,
            //   height: 60,
            //   width: 60,
            // ),
            SizedBox(
              // color: Colors.blue,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlutterLogo(
                    size: 100,
                    style: FlutterLogoStyle.horizontal,
                    textColor: Colors.white,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Entrar no App"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
