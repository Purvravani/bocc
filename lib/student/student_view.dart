import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'student_bloc.dart';
import 'student_event.dart';
import 'student_state.dart';

class StudentPage extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => StudentBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<StudentBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc"),
      ),
      body: Column(
        children: [
          TextField(
            controller: t1,
          ),
          TextField(
            controller: t2,
          ),
          TextField(
            controller: t3,
          ),
          Row(
            children: [
              BlocBuilder<StudentBloc, StudentState>(
                builder: (context, state) {
                  if (state is Sum_State) {
                    return Text("Sum=${state.total}");
                  } else {
                    return Text("Sum=0");
                  }
                },
              ),
              SizedBox(width: 10,),
              BlocBuilder<StudentBloc, StudentState>(
                builder: (context, state) {
                  if (state is Sub_State) {
                    return Text("Sub=${state.total}");
                  } else {
                    return Text("Sub=0");
                  }
                },
              )
            ],
          ),
          ElevatedButton(
              onPressed: () {
                bloc.add(Sum_class(t1.text, t2.text));
              },
              child: Text("Sum")),
          ElevatedButton(
              onPressed: () {
                bloc.add(Sub_class(t1.text, t2.text));
              },
              child: Text("Sub")),
        ],
      ),
    );
  }
}
