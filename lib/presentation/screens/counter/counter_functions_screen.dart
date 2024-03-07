import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions Screen'),
        backgroundColor: const Color.fromARGB(100, 79, 37, 181),
        centerTitle: true,
        actions: [
          IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: () {
            setState(() {
              clickCounter = 0;
            });
          },
        ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', 
                style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            // Text(clickCounter > 1 ? 'clicks' : 'click', style: const TextStyle(fontSize: 25,))
            Text('Click${clickCounter>1 ? 's':''}', style: const TextStyle(fontSize: 25,))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          CustomButon(
            icon: Icons.refresh_rounded,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(height: 10,),

          CustomButon(
            icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  clickCounter--;
                });
            },
          ),
          const SizedBox(height: 10,),

          CustomButon(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButon extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed; 

  const CustomButon({
    super.key, 
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onPressed,
        child: Icon(icon),
      );
  }
}
