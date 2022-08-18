import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = [
    'COQOA',
    'Heart',
    'JAVADOT',
    'POMOTODO',
    'Star',
    'TAPTAP',
  ];
  var imageList = [
    'assets/COQOA.jpeg',
    'assets/Heart.png',
    'assets/JAVADOT.png',
    'assets/POMOTODO.png',
    'assets/Star.png',
    'assets/TAPTAP.png',
  ];
  var description = [
    '1. description 1 is long long long.. long long long.. long long long.. long long long.. long long long.. long long long.. long long long..',
    '2. description 2 is long long long.. long long long.. long long long.. long long long.. long long long.. long long long.. long long long..',
    '3. description 3 is long long long.. long long long.. long long long.. long long long.. long long long.. long long long.. long long long..',
    '4. description 4 is long long long.. long long long.. long long long.. long long long.. long long long.. long long long.. long long long..',
    '5. description 5 is long long long.. long long long.. long long long.. long long long.. long long long.. long long long.. long long long..',
    '6. description 6 is long long long.. long long long.. long long long.. long long long.. long long long.. long long long.. long long long..',
  ];
  void showPopUp(context, title, image, description) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(image, width: 200, height: 200),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close), 
                    label: const Text('Close'),
                    ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print(titleList[index]);
              showPopUp(context, titleList[index], imageList[index],
                  description[index]);
            },
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(imageList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          titleList[index],
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: width,
                          child: Text(
                            description[index],
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
