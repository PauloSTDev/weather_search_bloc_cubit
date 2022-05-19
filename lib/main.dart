import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_bloc_tutorial/cubit/weather_cubit.dart';
import 'package:flutter_cubit_bloc_tutorial/data/weather_repository.dart';
import 'package:flutter_cubit_bloc_tutorial/pages/weather_search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => WeatherCubit(FakeWeatherRepository()),
          child: WeatherSearchPage(),
      ),
    );
  }
}

/* Exemplos
class MyState{
  final int field1;
  final String field2;

  MyState(this.field1,this.field2);

}
class MyCubit extends Cubit<MyState>{
  MyCubit():super(MyState(0,'Initial value'));

  void changeState(){
    emit(MyState(0,'New value'));
  }
}
* */

