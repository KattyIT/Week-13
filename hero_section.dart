import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({Key? key, this.heroTag}) : super(key: key);

  //const HeroScreen({Key? key, this.image, this.heroTag}) : super(key: key);

  //final List<String>? imageUrls;
  final String? heroTag;


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 200.0,
        ),
    ListTile(
    leading:
        Hero(
          tag: heroTag!,
          child: Card(
            child: SizedBox(
            height: 200,
              child: Hero(
              tag: heroTag!,
              child: FadeInImage(
              placeholder: AssetImage('images/poo.png'),
              image: NetworkImage('https://chepetsk.ru/upload/iblock/e91/e910dc68028e4a10d6ba9d5c02febcba.jpg'),
              ),),),),),),
              ElevatedButton(onPressed: () => _gotoDetailsPage(context),
              child: const Text('Show Me Bigger Winne'),
              )
            ],
        );
  }


  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('second Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: heroTag!,
                  child: AnimatedContainer(
                   //height: show ? 150 : 0,
                    width: 150,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                    child: Image.network('https://chepetsk.ru/upload/iblock/e91/e910dc68028e4a10d6ba9d5c02febcba.jpg'),
                  ),
                ),

            ],
          ),
        ),
      ),
    ));
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('DDDDDDD'),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Hero(
//                     tag: 'hero-picture',
//                     child: FadeInImage(
//                       placeholder: AssetImage('images/poo.png'),
//                       image: NetworkImage(
//                           'https://chepetsk.ru/upload/iblock/e91/e910dc68028e4a10d6ba9d5c02febcba.jpg'),
//                     ),
//                   ),
//                 ]),
//           )
//
//       ),
//     );
//   }
// }