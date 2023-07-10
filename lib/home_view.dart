import 'package:baketballapp/cubit.dart';
import 'package:baketballapp/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<basketballcubit>(context);
    return BlocBuilder<basketballcubit, basketballappstate>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.blueGrey,
              statusBarIconBrightness: Brightness.light,
            ),
            backgroundColor: Colors.blueGrey,
            title: const CustomText(
              text: 'Basketball App',
              textsize: 24,
              color: Colors.black,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 4,
                ),
                customrow(
                  textA: 'Team A',
                  textB: 'Team B',
                  textsize: 34,
                  colora: bloc.teama,
                  colorb: bloc.teamb,
                ),
                customrow(
                    textA: '${bloc.TeamA}',
                    colora: bloc.teama,
                    colorb: bloc.teamb,
                    textsize: 80,
                    textB: '${bloc.TeamB}'),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    customcolumn(
                      text1: '1 point ',
                      text2: '2 points',
                      text3: '3 pionts',
                      onPressed1: () {
                        bloc.increaseteamaonepoint();
                      },
                      onPressed2: () {
                        bloc.increaseteamatwopoint();
                      },
                      onPressed3: () {
                        bloc.increaseteamathreepoint();
                      },
                    ),
                    customcolumn(
                      text1: '1 point ',
                      text2: '2 points',
                      text3: '3 pionts',
                      onPressed1: () {
                        bloc.increaseteambonepoint();
                      },
                      onPressed2: () {
                        bloc.increaseteambtwopoint();
                      },
                      onPressed3: () {
                        bloc.increaseteambthreepoint();
                      },
                    ),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        fixedSize: const Size(180, 40)),
                    onPressed: () {
                      bloc.startagain();
                    },
                    child: const CustomText(
                      text: 'strat again',
                      textsize: 24,
                      color: Colors.black,
                    )),
                const Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class customrow extends StatelessWidget {
  const customrow({
    super.key,
    required this.textA,
    required this.textsize,
    required this.textB,
    required this.colora,
    required this.colorb,
  });
  final String textA;
  final String textB;
  final double textsize;
  final Color colora;
  final Color colorb;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomText(
          text: textA,
          textsize: textsize,
          color: colora,
        ),
        CustomText(
          text: textB,
          textsize: textsize,
          color: colorb,
        )
      ],
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.textsize,
      required this.color});
  final String text;
  final double textsize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: textsize, color: color),
    );
  }
}

class customcolumn extends StatelessWidget {
  const customcolumn(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.onPressed1,
      required this.onPressed2,
      required this.onPressed3});
  final String text1;
  final String text2;
  final String text3;

  final void Function() onPressed1;
  final VoidCallback onPressed2;
  final VoidCallback onPressed3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                fixedSize: const Size(180, 40)),
            onPressed: onPressed1,
            child: CustomText(
              text: text1,
              textsize: 24,
              color: Colors.black,
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                fixedSize: const Size(180, 40)),
            onPressed: onPressed2,
            child: CustomText(text: text2, textsize: 24, color: Colors.black)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                fixedSize: const Size(180, 40)),
            onPressed: onPressed3,
            child: CustomText(text: text3, textsize: 24, color: Colors.black)),
      ],
    );
  }
}
