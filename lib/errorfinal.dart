import 'package:flutter/material.dart';

class AppChuaPhatTrien extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // foregroundColor: Colors.amber,
        // backgroundColor: Colors.red,
        title: Text('Chức năng này chưa phát triển'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://s3.voyapon.com/wp-content/uploads/2020/08/21005335/gomenasai9.jpg',
              height: 600,
              width: 410,
            ),
            ElevatedButton(
              child: Text('Quay trở lại'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Container(
            height: 50,
          )),
    );
  }
}
