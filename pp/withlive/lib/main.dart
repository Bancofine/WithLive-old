import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  double buttonWidth = 350.0; // 버튼의 초기 가로 크기 설정
  double buttonHeight = 330.0; // 버튼의 초기 세로 크기 설정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          title: Text('wihlife'),
          leading: const Icon(Icons.menu),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.settings),
              tooltip: 'Hi!',
              onPressed: () => {},
            ),
          ],
          backgroundColor: Colors.white,
        ),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: '아ㅏㅏㅏㅏㅏㅏ',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white, // 바탕 흰색으로 변경
              child: Center(
                child: Container(
                  width: 400,
                  height: 300,
                  color: Colors.black, // 카메라 화면 박스 배경색
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0), // 박스의 위아래 패딩 설정
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '카메라 화면',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white, // 버튼 영역 배경색
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // 버튼이 눌렸을 때의 동작 처리
                  },
                  child: Text('큰 버튼'),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(buttonWidth, buttonHeight), // 버튼의 가로 세로 크기 설정
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
