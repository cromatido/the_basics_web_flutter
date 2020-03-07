import 'package:flutter/material.dart';
import 'package:the_basics_web/course_details/course_details.dart';
import 'package:the_basics_web/widgets/call_to_action/call_to_action.dart';
import 'package:the_basics_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:the_basics_web/widgets/centered_view/centered_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Row(
                  children: <Widget>[
                    CourseDetails(),
                    Expanded(
                      child: Center(
                        child: CallToAction('Join Course'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
