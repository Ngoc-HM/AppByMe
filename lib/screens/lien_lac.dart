import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/webview.dart';

class lienLac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Liên lạc Giảng Viên")),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              mainAxisExtent: 100,
              childAspectRatio: 10),
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => nghiHoc()));
              },
              child: Text(
                'Xin nghỉ học',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => chuyenCan()));
              },
              child: Text(
                'Chuyên Cần',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => thanhTich()));
              },
              child: Text(
                'Thành tích',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Khac()));
              },
              child: Text(
                'Vấn đề khác',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => danhSachLop()));
              },
              child: Text(
                'Danh sách lớp',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => taiLieu()));
              },
              child: Text(
                'Tài liệu ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => chuongTrinhhoc()));
              },
              child: Text(
                'Chương trình học',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
