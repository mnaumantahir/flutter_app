import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:quizzler/retry.dart';
// import 'quiz_brain.dart';
import 'dart:ui';


void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => QuizApp())));
  } //<- Creates an object that fetches an image.
  // var image = new Image(
  //     image: AssetImage(
  //         'asset/quiz.png'),
  //     height:300);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Image(
                image: AssetImage(
                    'Assets/logo.png'),
                height:300),
            Text("Muhammad Nouman Tahir",style:TextStyle(fontSize: 20,color: Colors.amber )),
            SizedBox(height: 10,),
            CircularProgressIndicator(backgroundColor: Colors.deepPurple)
          ],
        )
    );
  }
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
            child: QuizPage()
          // Padding(
          //   // padding: EdgeInsets.symmetric(horizontal: 10.0),
          //   child: QuizPage(),
          // ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage>  {

  // DateTime alert;

  // @override
  // void initState() {
  //   super.initState();
  //   alert = DateTime.now().add(Duration(seconds: 10));
  // }

  @override
  Widget build(BuildContext context) {
    // quizBrain.shuffle();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("hello")
      ],
    );
  }
}

// /*
// question1: 'You can lead a cow down stairs but not up stairs.', false,
// question2: 'Approximately one quarter of human bones are in the feet.', true,
// question3: 'A slug\'s blood is green.', true,
// */
// class SecondRoute extends StatelessWidget {
//   QuizBrain quizBrain;
//   int correct;
//   int wrong;
//   String timer;
//   List<int> wrong_answers;
//   List<int> correct_answers;
//
//   // final List<int> selected_answer;
//   SecondRoute(this.quizBrain,this.correct,this.wrong,this.correct_answers,this.wrong_answers,this.timer, {Key key}): super(key: key);
//   Widget check_timer(bool check){
//     if (timer=='time' && check==true){
//       return Container(
//
//         child:Text('Time Over',style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),),
//       );
//     }
//     else if (timer=='stop' && check==true){
//       return Container(
//
//         child:Text('Quiz Stopped',style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),),
//       );
//     }
//     else if (timer=='complete' && check==true){
//       return Container(
//
//         child:Text('Quiz Completed',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
//       );
//     }
//     else if(!check && timer!='complete'){
//       return Container(
//
//           child:Column(children: <Widget>[
//             Text('${10-(correct+wrong)}',style: TextStyle(fontSize: 30,color: Colors.white),),
//             Text('Unattempt Question',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)
//           ],)
//       );
//     }
//     else{
//       return SizedBox(height: 0,);
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade900,
//       appBar: AppBar(
//         title: Text("Results"),
//         leading: new IconButton(
//             icon: new Icon(Icons.arrow_back),
//             onPressed: (){ Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => QuizApp()));
//             }
//         ),
//       ),
//       body: Center(
//           child: SingleChildScrollView(
//               child:Column(children: <Widget>[
//                 Container(
//                   color: Colors.indigo,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: <Widget>[
//                       check_timer(true),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: <Widget>[
//                           Container(
//
//                             child:Text('${correct}',style: TextStyle(fontSize: 30,color: Colors.white),),
//                           ),
//                           Container(
//                             child:Text('${wrong}',style: TextStyle(fontSize: 30,color: Colors.white)),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: <Widget>[
//                           Container(
//                             child:Text("True  Answers",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
//                           ),
//                           Container(
//                             child:Text("Wrong Answers",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
//                           ),
//                         ],
//                       ),
//                       check_timer(false),
//                       // Container(
//                       //   child:Text("True  Answers",style: TextStyle(fontSize: 20,color: Colors.white)),
//                       // ),
//                       // Container(
//                       //   child:Text("Unattempt Questions",style: TextStyle(fontSize: 20,color: Colors.white)),
//                       // ),
//                     ],),),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 // SingleChildScrollView(
//                 Column(
//                   children: quizBrain.getallquestion(wrong_answers,0),
//                 ),
//                 // ),
//                 // SingleChildScrollView(
//                 Column(
//                   children: quizBrain.getallquestion(correct_answers,1),
//                 )
//                 // )
//
//               ],))
//
//       ),
//     );
//   }
// }
// class score_wrong extends StatefulWidget {
//   int counter;//if you have multiple values add here
//   // final List<int> selected_answer;
//   score_wrong(this.counter, {Key key}): super(key: key);
//   @override
//   _PlayButtonState createState() => _PlayButtonState();
// }
// class _PlayButtonState extends State<score_wrong> {
//   IconData icon;
//
//   @override
//   void initState() {
//     icon = Icons.close;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: FlatButton(
//         child: Icon(icon,color: Colors.red,),
//         onPressed: () {
//           print(quizBrain.getQuestionText_index(widget.counter));
//           Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => QuizApp2()));
//         },
//       ),
//     );
//   }
// }

// class FAB extends StatelessWidget {
//   final int id;
//   final Function(int) onPressed;
//   // final String buttonText;
//
//   const FAB({this.id, this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return  SizedBox(
//       width: 30,
//       child:IconButton(
//
//         icon: Icon(
//           Icons.close,
//           color: Colors.red,
//
//         ),
//         onPressed: () {onPressed(this.id);},
//       ) ,
//     ) ;
//     //   IconButton(
//     //
//     //   icon: Icon(
//     //     Icons.close,
//     //     color: Colors.red,
//     //
//     //   ),
//     //   onPressed: () {onPressed(this.id);},
//     // );
//
//
//   }
//
// }