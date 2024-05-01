import 'package:flutter/material.dart';
import 'package:review_system_kottakal_om/core/constant.dart';
import 'package:review_system_kottakal_om/db/model/review_model.dart';

class ReviewDetails extends StatelessWidget {
  final ReviewModel data;

  const ReviewDetails({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    const service = 'Answer 1 : ';
    const service1 = 'Answer 2 : ';
    const service2 = 'Answer 3 : ';
    const service3 = 'Answer 4 : ';
    const service4 = 'Answer 5 : ';

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Full Details of Review',
          style: TextStyle(
            fontSize: screenWidth * 0.04,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        toolbarHeight: screenHeight * 0.09,
        elevation: 1,
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.9,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.08,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.03),
                            child: ListTile(
                              leading: Icon(
                                Icons.question_answer,
                                color: mainColor,
                                size: screenWidth * 0.075,
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: service,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: data.selectedSnack,
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.045,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.03),
                            child: ListTile(
                              leading: Icon(
                                Icons.question_answer,
                                color: mainColor,
                                size: screenWidth * 0.075,
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: service1,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: data.selectedSnack1,
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.045,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.03),
                            child: ListTile(
                              leading: Icon(
                                Icons.question_answer,
                                color: mainColor,
                                size: screenWidth * 0.075,
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: service2,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: data.selectedSnack2,
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.045,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.03),
                            child: ListTile(
                              leading: Icon(
                                Icons.question_answer,
                                color: mainColor,
                                size: screenWidth * 0.075,
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: service3,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: data.selectedTick == 'good'
                                          ? '✅'
                                          : '❌',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.045,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.03),
                            child: ListTile(
                              leading: Icon(
                                Icons.question_answer,
                                color: mainColor,
                                size: screenWidth * 0.075,
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: service4,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: data.selectedClose == 'good'
                                          ? '✅'
                                          : '❌',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.045,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.03),
                            child: ListTile(
                              leading: Icon(
                                Icons.question_answer,
                                color: mainColor,
                                size: screenWidth * 0.075,
                              ),
                              title: RichText(
                                text: TextSpan(
                                  text: 'Description : ',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: data.description.isNotEmpty
                                          ? (data.description)
                                          : ('No vlaue from user'),
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.045,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
