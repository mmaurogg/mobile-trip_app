import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:tripapp/User/bloc/block_user.dart';
import 'package:tripapp/trip_app_cupertino.dart';
import 'trip_app.dart';
import 'package:tripapp/User/ui/screens/sign_in_screen.dart';
import 'package:firebase_core/firebase_core.dart';

/*
void main() {
  runApp(const MyApp());
}

 */

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        bloc: UserBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SignInScreen(),
          //home: TripsAppCupertino(),
        )
    );
  }
}



//Clases Hola mundo y listas
class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return const Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return Text(_suggestions[index].asPascalCase);
      },
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();

}


// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.
  class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
  setState(() {
  // This call to setState tells the Flutter framework that something has
  // changed in this State, which causes it to rerun the build method below
  // so that the display can reflect the updated values. If we changed
  // _counter without calling setState(), then the build method would not be
  // called again, and so nothing would appear to happen.
  _counter++;
  });
  }

  @override
  Widget build(BuildContext context) {
  // This method is rerun every time setState is called, for instance as done
  // by the _incrementCounter method above.
  //
  // The Flutter framework has been optimized to make rerunning build methods
  // fast, so that you can just rebuild anything that needs updating rather
  // than having to individually change instances of widgets.
  return Scaffold(
  appBar: AppBar(
  // Here we take the value from the MyHomePage object that was created by
  // the App.build method, and use it to set our appbar title.
  title: Text(widget.title),
  ),
  body: Center(
  // Center is a layout widget. It takes a single child and positions it
  // in the middle of the parent.
  child: Column(
  // Column is also a layout widget. It takes a list of children and
  // arranges them vertically. By default, it sizes itself to fit its
  // children horizontally, and tries to be as tall as its parent.
  //
  // Invoke "debug painting" (press "p" in the console, choose the
  // "Toggle Debug Paint" action from the Flutter Inspector in Android
  // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
  // to see the wireframe for each widget.
  //
  // Column has various properties to control how it sizes itself and
  // how it positions its children. Here we use mainAxisAlignment to
  // center the children vertically; the main axis here is the vertical
  // axis because Columns are vertical (the cross axis would be
  // horizontal).
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  const Text(
  'You have pushed the button this many times:',
  ),
  Text(
  '$_counter',
  style: Theme.of(context).textTheme.headline4,
  ),
  ],
  ),
  ),
  floatingActionButton: FloatingActionButton(
  onPressed: _incrementCounter,
  tooltip: 'Increment',
  child: const Icon(Icons.add),
  ), // This trailing comma makes auto-formatting nicer for build methods.
  );
  }
}
