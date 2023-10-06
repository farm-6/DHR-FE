import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ecology_collect/widgets/menu_bottom.dart';
import 'package:ecology_collect/widgets/menu_drawer.dart';
import 'package:ecology_collect/widgets/top_appbar.dart';
import 'package:image_picker/image_picker.dart';

class AiReportFault extends StatefulWidget {
  const AiReportFault({Key? key, this.selectedImage}) : super(key: key);

  final XFile? selectedImage; // 선택된 이미지를 전달 받습니다.

  @override
  _AiReportFaultState createState() => _AiReportFaultState();
}

// 나머지 부분은 동일

class _AiReportFaultState extends State<AiReportFault> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: '탐정 보고서',
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: const MenuBottom(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0), // 왼쪽과 오른쪽 패딩 10
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                if (widget.selectedImage != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.file(
                      File(widget.selectedImage!.path),
                      height: 270,
                    ),
                  ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffB8E3AA),
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0, // 선의 너비
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '▼  수달 탐정의 분석 결과',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.sentiment_very_dissatisfied_rounded,
                          size: 50,
                          color: Color(0xff395831),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '수달 탐정이 알아내지 못했어요.',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 210,
                            child: Text(
                              '사진이 선명하고 생물의 전체가\n나오면 수달 탐정이 더 찾기 쉬워요!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                const Text(
                  '아래 카메라 버튼을 누르고',
                  style: TextStyle(
                      color: Color(0xff87898E),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  '다른 사진으로 도전해봐요!',
                  style: TextStyle(
                      color: Color(0xff87898E),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 45,
                  color: Color(0xff87898E),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
