import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 30)),
                onPressed: () {
                  // Get.snackbar("Remainder", "Want to go next page",
                  //     icon: Icon(Icons.person),
                  //     backgroundColor: Colors.red.withOpacity(0.2),
                  //     duration: Duration(seconds: 4));
                  Get.showSnackbar(GetSnackBar(
                    title: "Remainder",
                    message: "want to go to next page!!!",
                    duration: Duration(seconds: 4),
                    icon: Icon(Icons.person),
                    backgroundColor: Colors.green,
                    borderColor: Colors.red,
                    padding: EdgeInsets.only(left: 20.0, bottom: 20),
                    //  borderRadius: BorderRadius.all(),
                  ));
                  // Get.to(Nextpage());
                  Get.defaultDialog(
                      title: "Message",
                      content: Text(
                        "do you want to go to next page?",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Nextpage()));

                            //  Get.to(Nextpage());
                          },
                          child: Text(
                            "Yes",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              "No",
                              style: TextStyle(color: Colors.red),
                            ))
                      ]);
                },
                child: Center(
                  child: Text(
                    "Next page",
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}

class Nextpage1 extends StatelessWidget {
  const Nextpage1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              Get.to(Myapp());
            },
            child: Text("GO back")),
      ),
    );
  }
}

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});
  _NextpageState createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Myapp()));
              //  Get.to(Myapp());
            },
            child: Text("GO back")),
      ),
    );
  }
}
