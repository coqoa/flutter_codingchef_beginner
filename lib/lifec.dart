import 'package:flutter/material.dart';

class LIFEC extends StatefulWidget {
  const LIFEC({Key? key}) : super(key: key);

  @override
  State<LIFEC> createState() => _LIFECState();
}

class _LIFECState extends State<LIFEC> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(('--- initState is Called'));
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('--- Dispose is Called');
  }
  @override
  Widget build(BuildContext context) {
    print('---  Build is Called');
    return Scaffold(
      appBar: AppBar(title: Text('라이프 사이클'),),
      body: Center(child: Text('내용',style: TextStyle(fontSize: 30.0),),),
    );
  }
}
