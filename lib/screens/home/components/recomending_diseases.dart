import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../diseases/eye_diseases/eye_diseases_list.dart';
import '../../diseases/lungs_diseases/lungs_diseases_list.dart';
import '../../diseases/muscle_diseases/muscle_diseases_list.dart';
import '../../diseases/skin_diseases/skin_diseses_list.dart';

class RecomendingDiseases extends StatelessWidget {
  const RecomendingDiseases({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendDiseases(
            image: "assets/images/skin.jpeg",
            title: "Skin",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SkinDiseases()
                  )
              );
            },
          ),
          RecomendDiseases(
            image: "assets/images/lungs.jpeg",
            title: "Lungs",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LungsDiseases()
                  )
              );
            },
          ),
          RecomendDiseases(
            image: "assets/images/muscle.jpg",
            title: "Muscle",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MuscleDiseases()
                  )
              );
            },
          ),
          RecomendDiseases(
            image: "assets/images/eye.jpeg",
            title: "Eye",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EyeDiseasesList()
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendDiseases extends StatelessWidget {
  const RecomendDiseases({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefalutPadding,
          top: kDefalutPadding * 2,
          bottom: kDefalutPadding,
          right: kDefalutPadding
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(
              image,
            height: 250,
            fit: BoxFit.cover,
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefalutPadding),
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23)
                    )
                  ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$title \n".toUpperCase(),
                              style: Theme.of(context).textTheme.button,
                            ),
                            TextSpan(
                              text: "Diseases".toUpperCase(),
                              style: Theme.of(context).textTheme.button,
                            ),
                          ]
                      )
                  ),
                  Spacer(),
                  Text(
                    'Click',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(
                      color: kPrimaryColor,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

