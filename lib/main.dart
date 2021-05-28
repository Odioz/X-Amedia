import 'package:flutter/material.dart';
import 'oknoorganiz.dart';
import 'spisokorgan.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:
        Color.fromRGBO(65, 183, 93, 1), // цвет нижей полоски
    statusBarColor: Color.fromRGBO(53, 193, 241, 1), // цвет строки состояния
  ));
  runApp(Xamedia());
}

class Xamedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return MaterialApp(home: Splash());
          } else {
            print('Run Glavnaya');
            return MaterialApp(
              theme: ThemeData(fontFamily: 'Pacifico'),
              home: Glavnaya(),
            );
          }
        });
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage("images/appbar.png"),
          width: MediaQuery.of(context).size.width * 0.4,
        ),
      ),
    );
  }
}

class Glavnaya extends StatelessWidget {
  const Glavnaya({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        leading: Container(
            child: Image(
          image: new AssetImage("images/appbar.png"),
          width: 30,
          height: 30,
          color: null,
          fit: BoxFit.scaleDown,
          alignment: Alignment.center,
        )), //логотип
        title: Text(
          'Хатын-Арыы медиа',
        ),
        backgroundColor: Color.fromRGBO(53, 193, 241, 1),
      ),
      body: Stack(
        children: <Widget>[
          bottomUkrash(),
          SpisokOrg(),
        ],
      ),
    ));
  }
}

Widget bottomUkrash() {
  return Row(children: [
    Expanded(
        child: Align(
      child: ClipPath(
        child: Container(
          color: Color.fromRGBO(65, 183, 93, 1),
          height: 400,
        ),
        clipper: BottomWaveClipper(),
      ),
      alignment: Alignment.bottomCenter,
    ))
  ]);
}

class SpisokOrg extends StatelessWidget {
  final spiskOrg = <SpisokOrgan>[
    SpisokOrgan(
        title: 'Администрация',
        nazv: 'МО "Хатын-Арынский наслег"',
        logo: 'images/logo01.png',
        poln:
            'Наслежная администрация МО "Хатын-Арынский наслег" Намского улуса Республики Саха(Якутия)',
        rukov: 'Глава - Ноговицын Иван Дмитриевич',
        adres:
            '678388,  Республика Саха (Якутия), Намский улус, село Аппаны, улица Лена, 22',
        telf: '8 (41162) 2-31-42, 2-30-42, 2-34-04',
        call: '84116223142',
        email: 'hatyn-aryy24@mail.ru',
        wwwad: 'https://hatynary.sakha.gov.ru/',
        insta: 'https://www.instagram.com/hatynaryy_sonunnara/',
        youtb: '',
        whatsp: ''),
    SpisokOrgan(
        title: 'Хатын-Арынский филиал',
        nazv: 'Намской детской школы искусств',
        logo: 'images/logo02.png',
        poln:
            'Хатын-Арынский филиал "Муниципальной бюджетной организации дополнительного образования «Намская детская школа искусств им. И.П.Винокурова» муниципального образования "Намский улус" Республики Саха (Якутия)"',
        rukov: 'Заведующая - Колесова Александра Аркадьевна',
        adres:
            '678388, Республика Саха(Якутия), Намский улус, село Аппаны, улица Д.Сивцева, 4',
        telf: '8 (41162) 2-34-35',
        call: '84116223435',
        email: 'appany.dshi@mail.ru',
        wwwad: '',
        insta: 'https://www.instagram.com/p/CLTbu_ZLROU/?igshid=1jonwd4bjyuxq',
        youtb: '',
        whatsp: ''),
    SpisokOrgan(
        title: '«Сайдыы»',
        nazv: 'Центр досуга с.Кысыл Деревня',
        logo: 'images/logo03.png',
        poln:
            'Муниципальное бюджетное учреждение "Центр досуга «Сайдыы» с. Кысыл Деревня муниципального образования "Хатын-Арынский наслег" Намского улуса Республики Саха (Якутия)"',
        rukov: 'Директор - Винокурова Айталина Гаврильевна',
        adres:
            '678388, Республика Саха(Якутия), Намский улус, село Кысыл Деревня, улица им. М.Решетниковой, 10',
        telf: '8 (41162) 2-30-95',
        call: '84116223095',
        email: '',
        wwwad: 'http://saydyy.ucoz.net/',
        insta: '',
        youtb: 'https://www.youtube.com/channel/UCt95h4mlCzNBXS7N0dRqakg',
        whatsp: ''),
    SpisokOrgan(
        title: '«Чороон»',
        nazv: 'Центр народного творчества с.Аппаны',
        logo: 'images/logo04.png',
        poln:
            'Муниципальное бюджетное учреждение "Центр народного творчества «Чороон» муниципального образования "Хатын-Арынский Наслег" Намского Улуса Республики Саха (Якутия)"',
        rukov: 'Директор - Пономарева Саргылана Даниловна',
        adres:
            '678388,  Республика Саха (Якутия), Намский улус, село Аппаны, улица Лена, 29',
        telf: '8 (41162) 2-31-34',
        call: '84116223134',
        email: '',
        wwwad: 'https://choron.ucoz.net/',
        insta: 'https://www.instagram.com/mbu_snt_choroon/',
        youtb:
            'https://www.youtube.com/channel/UClbSRmh5aiAW0ieme0vKfTg/videos',
        whatsp: ''),
    SpisokOrgan(
        title: '«Самородок»',
        nazv: 'Центр досуга с.Графский Берег',
        logo: 'images/logo05.png',
        poln:
            'Муниципальное бюджетное учреждение "Центр досуга «Самородок» с.Графский Берег муниципального образования "Хатын-Арынский наслег" Намского улуса Республики Саха (Якутия)"',
        rukov: 'Директор - Охлопкова Анна Аполлоновна',
        adres:
            '678388, Республика Саха (Якутия), Намский улус, село  Графский Берег, улица Центральная, 18',
        telf: '8 (41162) 2-30-97',
        call: '84116223097',
        email: '',
        wwwad:
            'https://hatynary.sakha.gov.ru/mbu-tsd-samorodok-s-grafskij-bereg',
        insta: 'https://www.instagram.com/p/CLdMiK6Mf5P/?igshid=1m6qgnrw09n8u',
        youtb: 'https://www.youtube.com/channel/UCH4wrtNpxbjpszz2OyuvbNg',
        whatsp: ''),
    SpisokOrgan(
        title: 'Затонская школа',
        nazv: 'МКОУ «ЗООШ» с.Графский Берег',
        logo: 'images/logo06.png',
        poln:
            'Муниципальное казенное общеобразовательное учреждение "Затонская основная общеобразовательная школа муниципального образования "Намский улус" Республики Саха (Якутия)"',
        rukov: 'Директор - Андреев Сергей Анатольевич',
        adres:
            '678388, Республика Саха (Якутия), Намский улус, село  Графский Берег, улица Пионерская, 2',
        telf: '8 (41162) 2-33-81',
        call: '84116223381',
        email: 'z.zatons@yandex.ru',
        wwwad: 'https://www.zatons.com/',
        insta: 'https://www.instagram.com/school_helper.zaton/',
        youtb: 'https://www.youtube.com/channel/UCxJyU21ZGAzYZbURGsIzgkw',
        whatsp: ''),
    SpisokOrgan(
        title: '«Хатынчаан»',
        nazv: 'Звукостудия с.Аппаны',
        logo: 'images/logo13.png',
        poln:
            'Муниципальное бюджетное учреждение "Звукостудия «Хатынчаан» с.Аппаны муниципального образования "Хатын-Арынский наслег" Намского улуса Республики Саха (Якутия)"',
        rukov: 'Директор - Мальцев Гаврил Семенович',
        adres:
            '678388,  Республика Саха (Якутия), Намский улус, село Аппаны, улица Лена, 22',
        telf: '',
        call: '',
        email: '',
        wwwad: 'http://hatynchaan.namteh.ru/',
        insta: '',
        youtb: 'https://www.youtube.com/channel/UC56Cc_SXucXQl-TmlvgmJiQ',
        whatsp: 'https://chat.whatsapp.com/LVvXQEKJlUy44tnTPfWkD4'),
    SpisokOrgan(
        title: 'Хатын-Арынская школа',
        nazv: 'МБУ «Х-АСОШ им. И.Е. Винокурова» с.Аппаны',
        logo: 'images/logo07.png',
        poln:
            'Муниципальное бюджетное общеобразовательное учреждение "Хатын-Арынская средняя общеобразовательная школа им. И. Е. Винокурова муниципального образования "Намский улус" Республики Саха (Якутия)"',
        rukov: 'Директор - Ноговицын Дмитрий Иванович',
        adres:
            '678388, Республика Саха (Якутия), Намский улус, село Аппаны, улица Лена, 67',
        telf: '8 (41162) 2-33-31, 2-33-41',
        call: '84116223331',
        email: 'hatyn-aryy@yandex.ru',
        wwwad: 'http://hatynaryy.ucoz.ru/',
        insta: '',
        youtb: '',
        whatsp: ''),
    SpisokOrgan(
        title: 'Детсад «Сандаара»',
        nazv: 'МБДОУ Центр развития ребенка №2 с.Аппаны',
        logo: 'images/logo08.png',
        poln:
            'Муниципальное бюджетное дошкольное образовательное учреждение "Центр развития ребёнка - детский сад №2 «Сандаара» с.Аппаны муниципального образования "Намский улус" Республики Саха (Якутия)"',
        rukov: 'Заведующая - Оконешникова Альбина Степановна',
        adres:
            '678388, Республика Саха (Якутия), Намский улус, с. Аппаны, ул.Лена, 67',
        telf: '8 (411-62) 23-4-42',
        call: '84116223442',
        email: 'mdousandaara@yandex.ru',
        wwwad: 'https://mdousandaara.ucoz.ru/',
        insta: '',
        youtb: '',
        whatsp: ''),
    SpisokOrgan(
        title: 'Детсад «Хатынчаана»',
        nazv: 'МБДОУ Центр развития ребенка №1 с.Аппаны',
        logo: 'images/logo09.png',
        poln:
            'Муниципальное бюджетное дошкольное образовательное учреждение "Центр развития ребёнка - детский сад №1 «Хатынчаана» с.Аппаны муниципального образования "Намский улус" Республики Саха (Якутия)"',
        rukov: 'Заведующая - Афанасьева Александра Геннадьевна',
        adres:
            '678388, Республика Саха (Якутия), Намский улус, с. Аппаны, ул. Лена, 17',
        telf: '8 (41162) 23-2-43',
        call: '84116223243',
        email: 'hatuntchana@mail.ru',
        wwwad: 'http://hatynchaana.ucoz.net/',
        insta: '',
        youtb: 'https://www.youtube.com/channel/UCZibX5eWIFWYttNGGGCUKlg',
        whatsp: ''),
    SpisokOrgan(
        title: 'Детсад «Мичээр»',
        nazv: 'МКДОУ детский сад с.Кысыл Деревня',
        logo: 'images/logo10.png',
        poln:
            'Муниципальное казенное дошкольное образовательное учреждение "детский сад «Мичээр» с.Кысыл Деревня  муниципального образования "Намский улус" Республики Саха (Якутия)"',
        rukov: 'Заведующая - Гуляева Татьяна Владимировна',
        adres:
            '678388, Республика Саха (Якутия), Намский улус, село Кысыл Деревня, улица им.М.Решетниковой, 8',
        telf: '8 (41162) 2-31-63',
        call: '84116223163',
        email: 'dsmicheer1990@yandex.ru',
        wwwad:
            'https://yakutia.bebeshka.info/yakutsk/detskiy-sad-micheer-s-kysyl-derevnya-munitsipalnogo-obrazovaniya-namskiy-ulus-respubliki-saha-629832/',
        insta: '',
        youtb: '',
        whatsp: ''),
    SpisokOrgan(
        title: 'Детсад «Ромашка»',
        nazv: 'МБДОУ десткий сад с.Графский Берег',
        logo: 'images/logo11.png',
        poln:
            'Муниципальное бюджетное дошкольное образовательное учреждение "детский сад «Ромашка» с. Графский Берег  муниципального образования "Намский улус" Республики Саха (Якутия)"',
        rukov: 'Заведующая - Дорофеева Лилия Михайловна',
        adres:
            '678388, Республика Саха (Якутия), Намский улус, село  Графский Берег, улица Гагарина, 5',
        telf: '8 (41162) 2-32-47',
        call: '84116223247',
        email: 'romashka.graff@mail.ru',
        wwwad: 'https://romashkagraff.ou14.ru/',
        insta: '',
        youtb: '',
        whatsp: ''),
    SpisokOrgan(
        title: 'Музей имени И.Е.Винокурова',
        nazv: 'Хатын-Арынский историко-краеведческий музей',
        logo: 'images/logo12.png',
        poln:
            'Хатын-Арынский историко-краеведческий музей имени Ильи Егоровича Винокурова (филиал Намского историко-этнографического музея им. П.И.Сивцева)',
        rukov: '',
        adres:
            '678388,  Республика Саха (Якутия), Намский улус, село Аппаны, улица Левина, 1/1',
        telf: '',
        call: '',
        email: '',
        wwwad: 'https://mr-namskij.sakha.gov.ru/filial',
        insta: '',
        youtb: '',
        whatsp: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListView.builder(
          itemCount: spiskOrg.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 4,
              shadowColor: Color.fromRGBO(0, 141, 210, 0.4),
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Container(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Image(
                      image: new AssetImage(spiskOrg[i].logo),
                      // width: 150,
                      // height: 150,
                      color: null,
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                    ),
                  ),
                  title: Text(spiskOrg[i].title,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 141, 210, 1),
                      )),
                  subtitle: Text(spiskOrg[i].nazv,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 141, 210, 1),
                      )),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Color.fromRGBO(65, 183, 93, 1)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OknoOrganiz(
                                spiskOrg[i].poln, //1
                                spiskOrg[i].logo, //2
                                spiskOrg[i].rukov, //3
                                spiskOrg[i].adres, //4
                                spiskOrg[i].telf, //5
                                spiskOrg[i].call, //6
                                spiskOrg[i].email, //7
                                spiskOrg[i].wwwad, //8
                                spiskOrg[i].insta, //9
                                spiskOrg[i].youtb, //10
                                spiskOrg[i].whatsp))); //11
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height + 5);
    var secondControlPoint = Offset(size.width - (size.width / 6), size.height);
    var secondEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
