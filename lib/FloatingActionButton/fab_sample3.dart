import 'package:flutter/material.dart';

/* main.dart で MaterialAppに useMaterial3: true を
   入れることでMaterial Design 3が使用できるようになる
*/
// return MaterialApp(
//   theme: ThemeData(
//       colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
//   home: const FabExample(),
// );

class FabExample extends StatelessWidget {
  const FabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton Sample'),
      ),
      body: const Center(child: Text('Press the button below!')),
      // An example of the floating action button.
      //
      // https://m3.material.io/components/floating-action-button/specs
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
