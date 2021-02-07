import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

// el guion bajo hace que esta clase sea privada solo se use en este archivo
class _CounterPageState extends State<CounterPage> {
  final _style = new TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
        elevation: 30.0,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Números de clicks:',
            style: _style,
          ),
          Text(
            '$_counter',
            style: _style,
          ),
        ],
      )),
      floatingActionButton: _createButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _subtract,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }

  void _add() {
    setState(() =>  _counter++ );
  }

  void _subtract() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }
}
