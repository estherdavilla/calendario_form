// import 'package:flutter/material.dart';
// import 'package:multi_dropdown/multiselect_dropdown.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.green,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();

//   static const _headerStyle = TextStyle(
//     fontSize: 12,
//     color: Colors.blue,
//   );
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final MultiSelectController _controller = MultiSelectController();

//   final List<ValueItem> _selectedOptions = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('WRAP', style: MyHomePage._headerStyle),
//             const SizedBox(
//               height: 4,
//             ),
//             MultiSelectDropDown(
//               showClearIcon: true,
//               controller: _controller,
//               onOptionSelected: (options) {
//                 debugPrint(options.toString());
//               },
//               options: const <ValueItem>[
//                 ValueItem(label: 'Option 1', value: '1'),
//                 ValueItem(label: 'Option 2', value: '2'),
//                 ValueItem(label: 'Option 3', value: '3'),
//                 ValueItem(label: 'Option 4', value: '4'),
//                 ValueItem(label: 'Option 5', value: '5'),
//                 ValueItem(label: 'Option 6', value: '6'),
//               ],
//               disabledOptions: const [ValueItem(label: 'Option 1', value: '1')],
//               selectionType: SelectionType.multi,
//               chipConfig: const ChipConfig(
//                   wrapType: WrapType.wrap, backgroundColor: Colors.red),
//               dropdownHeight: 300,
//               optionTextStyle: const TextStyle(fontSize: 16),
//               selectedOptionIcon: const Icon(
//                 Icons.checklist,
//                 color: Colors.pink,
//               ),
//               selectedOptionTextColor: Colors.blue,
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Wrap(
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     _controller.clearAllSelection();
//                     setState(() {
//                       _selectedOptions.clear();
//                     });
//                   },
//                   child: const Text('CLEAR'),
//                 ),
//                 const SizedBox(
//                   width: 8,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       _selectedOptions.clear();
//                       _selectedOptions.addAll(_controller.selectedOptions);
//                     });
//                   },
//                   child: const Text('Get Selected Options'),
//                 ),
//                 const SizedBox(
//                   width: 8,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_controller.isDropdownOpen) {
//                       _controller.hideDropdown();
//                     } else {
//                       _controller.showDropdown();
//                     }
//                   },
//                   child: const Text('SHOW/HIDE DROPDOWN'),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 12,
//             ),
//             Text(
//               'Selected Options: $_selectedOptions',
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             const Text('SCROLL', style: MyHomePage._headerStyle),
//             const SizedBox(
//               height: 4,
//             ),
//             MultiSelectDropDown(
//               onOptionSelected: (options) {
//                 debugPrint(options.toString());
//               },
//               options: const <ValueItem>[
//                 ValueItem(label: 'Option 1', value: '1'),
//                 ValueItem(label: 'Option 2', value: '2'),
//                 ValueItem(label: 'Option 3', value: '3'),
//                 ValueItem(label: 'Option 4', value: '4'),
//                 ValueItem(label: 'Option 5', value: '5'),
//                 ValueItem(label: 'Option 6', value: '6'),
//               ],
//               selectionType: SelectionType.multi,
//               chipConfig: const ChipConfig(wrapType: WrapType.scroll),
//               dropdownHeight: 400,
//               optionTextStyle: const TextStyle(fontSize: 16),
//               selectedOptionIcon: const Icon(Icons.check_circle),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             const Text('FROM NETWORK', style: MyHomePage._headerStyle),
//             const SizedBox(
//               height: 4,
//             ),
//             MultiSelectDropDown.network(
//               dropdownHeight: 200,
//               onOptionSelected: (options) {
//                 debugPrint(options.toString());
//               },
//               networkConfig: NetworkConfig(
//                 url: 'https://jsonplaceholder.typicode.com/users',
//                 method: RequestMethod.get,
//                 headers: {
//                   'Content-Type': 'application/json',
//                 },
//               ),
//               chipConfig: const ChipConfig(wrapType: WrapType.wrap),
//               responseParser: (response) {
//                 debugPrint('Response: $response');

//                 final list = (response as List<dynamic>).map((e) {
//                   final item = e as Map<String, dynamic>;
//                   return ValueItem(
//                     label: item['name'],
//                     value: item['id'].toString(),
//                   );
//                 }).toList();

//                 return Future.value(list);
//               },
//               responseErrorBuilder: ((context, body) {
//                 return const Padding(
//                   padding: EdgeInsets.all(16.0),
//                   child: Text('Error fetching the data'),
//                 );
//               }),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }


import 'package:flutter/material.dart';

/// Flutter code sample for [DropdownMenu]s. The first dropdown menu has an outlined border.

void main() => runApp(const DropdownMenuExample());

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}
// declaração de variabéis de estado
class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  final TextEditingController colorController = TextEditingController();
  final TextEditingController iconController = TextEditingController();
  ColorLabel? selectedColor;
  IconLabel? selectedIcon;

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<ColorLabel>> colorEntries =
        <DropdownMenuEntry<ColorLabel>>[];
    for (final ColorLabel color in ColorLabel.values) {
      colorEntries.add(
        DropdownMenuEntry<ColorLabel>(
            value: color, label: color.label, enabled: color.label != 'Grey'),
      );
    }

    final List<DropdownMenuEntry<IconLabel>> iconEntries =
        <DropdownMenuEntry<IconLabel>>[];
    for (final IconLabel icon in IconLabel.values) {
      iconEntries
          .add(DropdownMenuEntry<IconLabel>(value: icon, label: icon.label));
    }

    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      home: Scaffold( //Corpo do projeto
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DropdownMenu<ColorLabel>(
                      initialSelection: ColorLabel.green,
                      controller: colorController,
                      label: const Text('Color'),
                      dropdownMenuEntries: colorEntries,
                      onSelected: (ColorLabel? color) {
                        setState(() {
                          selectedColor = color;
                        });
                      },
                    ),
                    const SizedBox(width: 20),
                    DropdownMenu<IconLabel>(
                      controller: iconController,
                      enableFilter: true,
                      leadingIcon: const Icon(Icons.search),
                      label: const Text('Icon'),
                      dropdownMenuEntries: iconEntries,
                      inputDecorationTheme: const InputDecorationTheme(
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                      onSelected: (IconLabel? icon) {
                        setState(() {
                          selectedIcon = icon;
                        });
                      },
                    )
                  ],
                ),
              ),
              if (selectedColor != null && selectedIcon != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        'You selected a ${selectedColor?.label} ${selectedIcon?.label}'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(
                        selectedIcon?.icon,
                        color: selectedColor?.color,
                      ),
                    )
                  ],
                )
              else
                const Text('Please select a color and an icon.')
            ],
          ),
        ),
      ),
    );
  }
}

enum ColorLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

enum IconLabel {
  smile('Smile', Icons.sentiment_satisfied_outlined),
  cloud(
    'Cloud',
    Icons.cloud_outlined,
  ),
  brush('Brush', Icons.brush_outlined),
  heart('Heart', Icons.favorite);

  const IconLabel(this.label, this.icon);
  final String label;
  final IconData icon;
}
