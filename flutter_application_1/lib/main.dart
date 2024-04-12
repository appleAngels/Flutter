import 'package:flutter/material.dart';
import 'model/car.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget _itemForRow(BuildContext context, int index) {
    // return MyWidget()
    // return Text(datas[index].name!)
    return Container(
        // color: Colors.red,
        margin: const EdgeInsets.all(10),
        // child: Text(datas[index].name!),
        // child: Image.network(datas[index].imageUrl!),
        child: Column(
          children: <Widget>[
            Image.network(datas[index].imageUrl!),
            // Container(height: 10),
            SizedBox(
              height: 10,
            ),
            Text(
              datas[index].name!,
              style: TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: ListView.builder(
        itemBuilder: _itemForRow,
        itemCount: datas.length,
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello World3300',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.red),
      ),
    );
  }
}

final List<Car> datas = [
  const Car(
    name: 'Car 1',
    imageUrl:
        'https://www.imore.com/sites/imore.com/files/styles/large/public/field/image/2019/06/mac-pro-2019-02.jpeg?itok=E8ZC65wk',
  ),
  const Car(
    name: 'Car 2',
    imageUrl:
        'https://www.imore.com/sites/imore.com/files/styles/large/public/field/image/2019/06/mac-pro-2019-02.jpeg?itok=E8ZC65wk',
  ),
  const Car(
    name: 'Car 3',
    imageUrl:
        'https://www.imore.com/sites/imore.com/files/styles/large/public/field/image/2019/06/mac-pro-2019-02.jpeg?itok=E8ZC65wk',
  ),
  const Car(
    name: 'Car 4',
    imageUrl:
        'https://www.imore.com/sites/imore.com/files/styles/large/public/field/image/2019/06/mac-pro-2019-02.jpeg?itok=E8ZC65wk',
  )
];
