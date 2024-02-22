import 'package:flutter/material.dart';

class RecyclopediaPage extends StatefulWidget {
  const RecyclopediaPage({super.key, required this.title});

  final String title;

  @override
  State<RecyclopediaPage> createState() => _RecyclopediaState();
}

class _RecyclopediaState extends State<RecyclopediaPage> {
  final List<String> entries = <String>[
    'Solid Waste',
    'Wet Waste',
    'Chemical Waste',
    'Plastic Waste',
    'Electronic Waste',
    'Biodegradeble Waste'
  ];

  int current = 0;
  // int _bottomNavBarCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     toolbarHeight: 100.0,
    //     title: Container(
    //       margin: const EdgeInsets.only(left: 10.0),
    //       child: const Text(
    //         "Recyclopedia",
    //         style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
    //       ),
    //     ),
    //     actions: [
    //       Container(
    //         margin: const EdgeInsets.only(right: 20.0),
    //         child: const Icon(
    //           size: 36,
    //           Icons.settings,
    //           color: Color(0xffFC9A32),
    //         ),
    //       )
    //     ],
    //     backgroundColor: const Color(0xff167E6B),
    //   ),
    //   body: ListView.separated(
    //     padding: const EdgeInsets.all(8),
    //     itemCount: entries.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return Container(
    //         height: 50,
    //         color: const Color.fromRGBO(22, 126, 107, 1),
    //         child: const Center(
    //           child: Text('entries'),
    //         ),
    //       );
    //     },
    //     separatorBuilder: (BuildContext context, int index) {
    //       return const Divider();
    //     },
    //   ),
    //   bottomNavigationBar: BottomNavigationBar(
    //     elevation: 10.0,
    //     currentIndex: _bottomNavBarCurrentIndex,
    //     iconSize: 30,
    //     items: [
    //       BottomNavigationBarItem(
    //         icon: Container(
    //           padding: const EdgeInsets.all(5.0),
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             border: Border.all(
    //                 color: Colors.black, width: 1.0, style: BorderStyle.solid),
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           child: const Icon(
    //             Icons.home,
    //             color: Colors.black,
    //           ),
    //         ),
    //         label: "Home",
    //         backgroundColor: const Color(0xff167E6B),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Container(
    //           padding: const EdgeInsets.all(5.0),
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             border: Border.all(
    //                 color: Colors.black, width: 1.0, style: BorderStyle.solid),
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           child: const Icon(
    //             Icons.menu_book_rounded,
    //             color: Colors.black,
    //           ),
    //         ),
    //         label: "Recyclopedia",
    //         backgroundColor: const Color(0xff167E6B),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Container(
    //           padding: const EdgeInsets.all(5.0),
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             border: Border.all(
    //                 color: Colors.black, width: 1.0, style: BorderStyle.solid),
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           child: const Icon(
    //             Icons.search_rounded,
    //             color: Colors.black,
    //           ),
    //         ),
    //         label: "Scan",
    //         backgroundColor: const Color(0xff167E6B),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Container(
    //           padding: const EdgeInsets.all(5.0),
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             border: Border.all(
    //                 color: Colors.black, width: 1.0, style: BorderStyle.solid),
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           child: const Icon(
    //             Icons.history,
    //             color: Colors.black,
    //           ),
    //         ),
    //         label: "History",
    //         backgroundColor: const Color(0xff167E6B),
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Container(
    //           padding: const EdgeInsets.all(5.0),
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             border: Border.all(
    //                 color: Colors.black, width: 1.0, style: BorderStyle.solid),
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           child: const Icon(
    //             Icons.person,
    //             color: Colors.black,
    //           ),
    //         ),
    //         label: "Profile",
    //         backgroundColor: const Color(0xff167E6B),
    //       ),
    //     ],
    //     onTap: (index) {
    //       setState(() {
    //         _bottomNavBarCurrentIndex = index;
    //       });
    //     },
    //   ),
    // );

    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: const Color.fromRGBO(22, 126, 107, 1),
          child: const Center(
            child: Text('entries'),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );

    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: SearchAnchor(
    //       builder: (BuildContext context, SearchController controller) {
    //         return SearchBar(
    //           controller: controller,
    //           padding: const MaterialStatePropertyAll<EdgeInsets>(
    //               EdgeInsets.symmetric(horizontal: 16.0)),
    //           onTap: () {
    //             controller.openView();
    //           },
    //           onChanged: (_) {
    //             controller.openView();
    //           },
    //           leading: const Icon(Icons.search),
    //         );
    //       }, suggestionsBuilder:
    //       (BuildContext context, SearchController controller) {
    //     return List<ListTile>.generate(5, (int index) {
    //       final String item = 'item $index';
    //       return ListTile(
    //         title: Text(item),
    //         onTap: () {
    //           setState(() {
    //             controller.closeView(item);
    //           });
    //         },
    //       );
    //     });
    //   }),
    // ),
  }
}
