import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class schooler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schooler',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Schooler'),
        ),
        body: WebView(
          initialUrl: "https://schooler.sun-asterisk.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Hedspi',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Facebook Hedspi'),
        ),
        body: WebView(
          initialUrl: "https://www.facebook.com/groups/347673639804085",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class nghiHoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xin nghỉ học',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xin nghỉ học'),
        ),
        body: WebView(
          initialUrl: "hhttps://schooler.sun-asterisk.com/requests/add",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class chuyenCan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chuyên Cần',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chuyên Cần'),
        ),
        body: WebView(
          initialUrl: "https://schooler.sun-asterisk.com/requests/add",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class thanhTich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thành tích',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Thành tích'),
        ),
        body: WebView(
          initialUrl: "https://schooler.sun-asterisk.com/requests/add",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class Khac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liên lạc về các vấn đề khác',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Liên lạc về các vấn đề khác'),
        ),
        body: WebView(
          initialUrl: "https://schooler.sun-asterisk.com/requests/add",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class danhSachLop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DANH SÁCH LỚP - ĐĂNG KÍ LỚP NHẬT 5 TRÊN SCL',
      home: Scaffold(
        appBar: AppBar(
          title: Text('DANH SÁCH LỚP - ĐĂNG KÍ LỚP NHẬT 5 TRÊN SCL'),
        ),
        body: WebView(
          initialUrl:
              "https://www.facebook.com/groups/k65.hedspi/posts/787798975791547/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class taiLieu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TÀI LIỆU CHIA SẺ CHO SINH VIÊN (NHẬT 5)',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TÀI LIỆU CHIA SẺ CHO SINH VIÊN (NHẬT 5)'),
        ),
        body: WebView(
          initialUrl:
              "https://drive.google.com/drive/folders/18gx_U1G80LdZwjl8skROn4far46kb7es?fbclid=IwAR3FXGu9R79IFAmFM2B-JC9jglzOBZky-1s8V0SMA8t8qFa88PxtxEyWAso",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class chuongTrinhhoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHƯƠNG TRÌNH HỌC NHẬT 5 và GIÁO TRÌNH DÙNG ĐỂ TỰ ÔN JLPT',
      home: Scaffold(
        appBar: AppBar(
          title:
              Text('CHƯƠNG TRÌNH HỌC NHẬT 5 và GIÁO TRÌNH DÙNG ĐỂ TỰ ÔN JLPT'),
        ),
        body: WebView(
          initialUrl:
              "https://www.facebook.com/photo?fbid=10158364209747273&set=gm.778235080081270&idorvanity=347673639804085",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class ictsv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ICTSV',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ICTSV'),
        ),
        body: WebView(
          initialUrl: "https://ctsv.hust.edu.vn/#/cham-diem-ren-luyen",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class qldt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quản lí đào tạo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quản lí đào tạo'),
        ),
        body: WebView(
          initialUrl: "https://qldt.hust.edu.vn/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class N5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiến thức N5',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kiến thức N5'),
        ),
        body: WebView(
          initialUrl:
              "https://tuhoconline.net/luyen-thi-tieng-nhat/luyen-thi-n5",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class ctt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CTT-SIS',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CTT-SIS'),
        ),
        body: WebView(
          initialUrl: "https://ctt-sis.hust.edu.vn/default.aspx",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class HSSCP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hồ sơ SCP',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hồ sơ SCP'),
        ),
        body: WebView(
          initialUrl: "https://scp.sun-asterisk.com/#/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class basic1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiến thức Máy tính',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kiến thức Máy tính'),
        ),
        body: WebView(
          initialUrl:
              "https://drive.google.com/file/d/1Ury4hKfncHHSzeoY2o5ZkcxNragRV9_e/view?usp=sharing",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class basic2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internet'),
        ),
        body: WebView(
          initialUrl:
              "https://drive.google.com/file/d/1DGbJB37g8t2F7J4fbKKkc8mQWWIAgF3S/view?usp=sharing",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class basic3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Công nghệ truyền Dữ liệu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Công nghệ truyền Dữ liệu'),
        ),
        body: WebView(
          initialUrl:
              "https://drive.google.com/file/d/1kLnycCdGnq6esLzG7QTFlftTSaH-ldzB/view?usp=sharing",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class basic4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mã hóa',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mã hóa'),
        ),
        body: WebView(
          initialUrl:
              "https://drive.google.com/file/d/12jGWjuWJlwEJ2Ea76t9bF7hvjQ3cqEv4/view?usp=sharing",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class basic5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'An toàn và Bảo Mật',
      home: Scaffold(
        appBar: AppBar(
          title: Text('An toàn và Bảo Mật'),
        ),
        body: WebView(
          initialUrl:
              "https://drive.google.com/file/d/1Hjs4mhAfv1-SFvzIRrbFHgQpQDZuhDXQ/view?usp=sharing",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class basic6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cấu trúc máy tính',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cấu trúc máy tính'),
        ),
        body: WebView(
          initialUrl:
              "https://drive.google.com/file/d/1PRttVEoHHYfo-9yYYJrKLw5wC6TBtjXs/view?usp=sharing",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class basic7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cơ sở dữ liệu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cơ sở dữ liệu'),
        ),
        body: WebView(
          initialUrl:
              "https://drive.google.com/file/d/1byc6eZr--QjbHHRC3xQzgJtOJ3nyJWMp/view?usp=sharing",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class basic8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hệ điều hành',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hệ điều hành'),
        ),
        body: WebView(
          initialUrl:
              "https://drive.google.com/file/d/1CBVnsuzAEzpdI-p3G83sZwSEispyHCa3/view?usp=sharing",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class slackll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slack',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Slack'),
        ),
        body: WebView(
          initialUrl: "https://app.slack.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
