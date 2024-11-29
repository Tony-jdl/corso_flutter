import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'NotApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    String lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam augue quam, ornare sodales neque sit amet, ultrices gravida massa. Duis tempor egestas orci, eget efficitur libero porta non. Duis tempus nibh eget iaculis tempor. Vestibulum lobortis ipsum quis commodo suscipit. Fusce bibendum nisl nec ullamcorper accumsan. Nunc semper purus tellus, vel maximus diam auctor et. Donec dignissim scelerisque rutrum. Aliquam sed ex sapien. Phasellus in velit maximus, posuere ligula at, tempus justo. Suspendisse eu fermentum risus. Phasellus magna neque, sodales non volutpat ut, tristique sed quam. Donec gravida nec lectus in commodo. Proin eleifend tempor iaculis. Duis laoreet metus a suscipit viverra. Mauris scelerisque, nisi quis interdum consequat, orci ante gravida diam, sed semper purus nibh et metus. Duis at convallis neque. Donec tincidunt lacus enim, sed maximus ante sollicitudin a. Nunc sed imperdiet mauris. Nunc interdum et enim sit amet efficitur. Praesent id augue accumsan, sagittis metus vel, iaculis felis. Curabitur elit turpis, porta eu tristique sit amet, pellentesque quis magna. Sed ac cursus turpis. Aenean a mauris faucibus, facilisis lectus ac, rutrum nibh. Donec at vestibulum arcu. Cras mattis ultrices risus, a fermentum tortor dignissim vel. Suspendisse fermentum non lectus sit amet fringilla. Suspendisse maximus nunc vitae hendrerit tincidunt. Nunc et tortor varius, sodales ante et, gravida felis. Maecenas rutrum, odio at luctus luctus, mi mi bibendum eros, quis auctor neque turpis vitae felis. Vestibulum pulvinar orci at libero hendrerit tincidunt ut non mauris. Quisque mattis sapien sed eleifend mattis. Fusce et tincidunt enim, eu facilisis mauris. Aliquam volutpat diam quis lorem tristique ullamcorper. Nullam tempus, risus ut convallis viverra, sem turpis convallis dolor, sit amet pellentesque ipsum risus eu metus. Nunc et massa dolor. Aliquam erat volutpat. Nunc semper fringilla lacinia. Maecenas ullamcorper turpis libero, sit amet tristique justo venenatis volutpat. Aliquam nec mattis dui, eget iaculis dui. Maecenas laoreet leo et augue accumsan suscipit. Etiam hendrerit nulla non scelerisque pharetra. In sed urna nec massa consectetur imperdiet laoreet dignissim turpis. Phasellus finibus quis purus vel finibus. Etiam varius molestie orci, in fringilla diam facilisis id. Praesent aliquam odio sed elit fermentum ullamcorper. Nunc rutrum fringilla urna id aliquet. Duis ante erat, varius ac bibendum fermentum, gravida et felis. Phasellus vulputate erat sapien, a fringilla magna suscipit id. Nulla dolor nunc, sollicitudin sed gravida eget, convallis quis turpis. Quisque fermentum dapibus porttitor. Duis cursus nulla at pulvinar pretium. Nam id tellus fermentum, congue libero ut, aliquam tortor. Sed efficitur lacinia nunc at cursus. Cras et aliquam neque, fringilla cursus lorem. Donec non vestibulum nisi, vel cursus tellus. Aenean sodales tempus turpis sed condimentum. Pellentesque feugiat elementum est a luctus. Mauris risus diam, laoreet ac mi at, hendrerit posuere est. Donec commodo, orci facilisis commodo varius, nisi lacus pellentesque nisi, non facilisis ex felis scelerisque orci. Etiam dictum tempor est at vehicula. Ut in eros velit. Sed ipsum nibh, commodo a mi non, varius gravida felis. Mauris auctor, sem eu consectetur blandit, purus massa suscipit odio, in mattis est metus sed dolor. Donec venenatis auctor elit ut pellentesque. Ut dignissim, sapien in ultricies dapibus, leo felis iaculis purus, vitae elementum urna dolor ut erat. Donec dictum porta turpis sed consequat. Ut odio lorem, mollis condimentum feugiat non, suscipit sed sem. Suspendisse ac lectus erat. Etiam viverra rhoncus tellus ac congue. Integer tincidunt diam vel tellus tincidunt, non congue justo fringilla. Morbi pulvinar tincidunt lacus nec scelerisque. Vestibulum pellentesque mauris ut pulvinar rutrum. Nunc faucibus vitae ex sed molestie. Praesent molestie eget odio sit amet ultrices. Mauris sed sem nulla. Fusce eget fringilla ex. Sed egestas tincidunt tristique. In laoreet vel nulla a pretium. Praesent tristique tortor posuere cursus fermentum. Vestibulum eleifend orci eu convallis tincidunt. Donec ullamcorper mollis interdum. Donec commodo, ipsum at tempus fermentum, sem eros congue elit, quis porttitor turpis sem consectetur neque. Donec ut mi eu eros molestie ullamcorper. Nullam ex sapien, interdum ut rhoncus nec, commodo at mauris. Donec viverra est sapien, non efficitur mi aliquam nec. Suspendisse eleifend dui sit amet felis rutrum, id finibus augue luctus. In pulvinar ullamcorper ex, sed vestibulum massa volutpat quis. Phasellus at dignissim lacus, eu tincidunt elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas id dapibus eros, vel bibendum lectus. Suspendisse potenti. Etiam felis magna, malesuada eu ex ac, vehicula lobortis dolor. Proin non lectus at nibh tristique finibus porttitor id tortor. Nulla auctor magna in quam porta varius. Duis id ipsum malesuada, pellentesque sem at, vehicula nulla. Ut sed enim eget lacus interdum congue a id sem. Aenean at pulvinar purus. Quisque iaculis vestibulum urna, at mollis augue semper sit amet. Ut eu risus sit amet lacus facilisis consequat. Aliquam id neque porta massa sagittis mattis. Ut vitae laoreet orci. Ut dui lacus, porta nec risus in, hendrerit scelerisque risus. Nunc facilisis augue non ipsum eleifend pellentesque. Donec et vulputate nisl. Aliquam faucibus ante in gravida feugiat. Donec sed tellus vitae dui semper efficitur ac id nunc. Nunc porta turpis dui, tempus viverra lacus accumsan at. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut consequat libero tempus arcu scelerisque, et posuere velit accumsan. Curabitur vitae nisl vitae felis efficitur vehicula vitae sed risus. Curabitur blandit enim posuere ullamcorper hendrerit. Maecenas id lorem in augue efficitur pretium non nec urna. Donec malesuada arcu libero, quis molestie ipsum suscipit sed. Nulla id aliquam ligula. Sed turpis quam, ullamcorper non imperdiet id, mollis quis risus. Mauris erat massa, luctus eu feugiat quis, faucibus elementum tortor. Integer molestie ligula non lobortis scelerisque. Integer commodo bibendum placerat. Proin vitae finibus nisl. Aenean imperdiet faucibus turpis at fringilla. Sed pretium fringilla euismod. Quisque lobortis magna et nisi venenatis, sed bibendum velit laoreet. Duis cursus condimentum odio sed pulvinar. Cras a ligula auctor, malesuada lorem nec, accumsan velit. Maecenas condimentum libero lacus, pellentesque rutrum magna vehicula non. Integer tincidunt mauris at urna bibendum tempus. Nulla turpis nisi, mollis vel dui ut, feugiat scelerisque sapien. Cras a libero lacinia, blandit orci sed, ultrices dui. Pellentesque in ligula vulputate nulla sollicitudin tristique vel vel diam. Proin dictum faucibus libero, non eleifend urna vehicula nec. Phasellus pretium ultricies interdum. Donec in placerat neque. Nullam tincidunt lorem eu lacinia posuere. Maecenas ut velit eu erat laoreet varius. Phasellus rhoncus ultrices interdum. Proin faucibus, tortor vel dignissim ullamcorper, velit libero varius ante, efficitur aliquam urna metus eu lacus. Sed facilisis molestie dui vel ultrices. Sed tempor mauris eu dui gravida, posuere condimentum nibh imperdiet. Ut lobortis eget ante non pharetra. Curabitur ultricies euismod lectus eget facilisis. Cras lectus est, molestie in ultrices a, cursus vitae turpis. Maecenas odio nunc, congue id pulvinar nec, varius id eros. Donec ut ante ante. Curabitur a nisi faucibus, volutpat lorem vitae, tincidunt eros. Etiam vitae auctor ligula. Aliquam luctus ipsum quis erat bibendum laoreet. Morbi eu orci aliquet, sodales ex vel, tempus justo. Ut ultricies ut elit ut feugiat. Cras feugiat elementum tortor ut sollicitudin. Pellentesque ut rhoncus nunc, ut feugiat orci. Aliquam quis eros eu lectus finibus venenatis a ac quam. Nunc lobortis posuere ex in pellentesque. Nunc imperdiet nisi sed purus finibus lobortis. Nunc volutpat efficitur arcu, non molestie dui volutpat tincidunt. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed dignissim cursus lectus, in imperdiet ipsum gravida non. Donec dapibus aliquam lectus a tristique. Nulla ultricies augue in nisi pretium, sed ornare elit eleifend. Duis vehicula massa sed nisi tristique, quis elementum lacus elementum. Fusce eu imperdiet orci. Nullam quis rhoncus turpis, ac sollicitudin nisl. Donec sollicitudin odio ut porttitor scelerisque. Nunc vehicula arcu cursus, mattis enim eget, sodales dolor. Maecenas ultricies purus ut justo porta, nec convallis quam accumsan. Nam gravida ex sollicitudin sodales pulvinar. Nullam in fringilla lorem. Nam malesuada mattis purus, nec ornare nibh eleifend finibus. Aliquam lobortis dolor in magna ornare, nec accumsan mi consequat. In maximus ac nulla vitae vestibulum. Fusce vulputate aliquam mi, ac fringilla lorem dignissim eget. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Fusce posuere vestibulum augue. Nulla eu condimentum nisi. Cras a malesuada sapien, at blandit magna. Ut eget justo ut metus facilisis sodales. Aenean et enim metus. Sed sit amet lorem elementum, finibus ex venenatis, porttitor lorem. Vivamus ut mi eu ex aliquet euismod. Nunc placerat sodales turpis at vestibulum. Curabitur cursus mattis tortor, sit amet pellentesque magna maximus ac. Sed purus purus, finibus a lectus sed, varius pulvinar velit. Morbi non risus eu risus fringilla ultrices at vel lacus. Fusce et tellus sed dui placerat cursus sed eget libero. Curabitur eget gravida turpis. Nulla ultrices, augue vitae imperdiet vestibulum, nunc lectus dignissim tortor, vel egestas libero massa vitae nunc. Mauris at nisi non magna varius condimentum eu nec massa. Mauris sed quam in orci convallis ornare et ut felis. Donec augue dui, porttitor sit amet faucibus vitae, efficitur eget nunc. In et urna augue. Mauris pellentesque eleifend mi, ut bibendum sapien bibendum sit amet.";
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(widget.title),
            centerTitle: true,
            // Lista di icone
            actions: [
              const Icon(Icons.note_alt_outlined),
              IconButton(
                  onPressed: () => print('IconButton: timeline'),
                  icon: const Icon(Icons.timeline))
            ],
            // Colore del font
            foregroundColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            // Ombreggiatura
            elevation: 10,
            shadowColor: Colors.grey,
            // Altezza Navbar
            toolbarHeight: 60,
          ),
          body: Scrollbar( // barra di scorrimento
            thickness: 20, // spessore della barra di
            trackVisibility: true, // attiva/disattiva la visibilità della parte sotto la barra
            thumbVisibility: true, // attiva/disattiva visibilità barra
            scrollbarOrientation: ScrollbarOrientation.right, // determina la posizione della barra
            radius: const Radius.circular(5), // aggiunge un raccordo alla barra
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical, // determina la tipologia di scroll se verticale o orizzontale
              reverse: false, // inverte la direzione di scroll
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(lorem),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ),
        Positioned(
          bottom: 40,
          left: 150,
          height: 100,
          width: 100,
          child:
            Container(
              color: Colors.blue,
              child: const Icon(Icons.account_balance),
            ),
        )
      ]
    );
  }
}
