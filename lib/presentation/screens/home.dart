import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/media_query_values.dart';
import 'package:task_ui/core/widgets/custom_text.dart';

import '../../../core/utils/app_theme_colors.dart';
import '../../../core/utils/assets_images_path.dart';
import '../widgets/card.dart';
import '../widgets/card_bottom_sheet.dart';
import '../widgets/circle_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: const Color.fromRGBO(253, 253, 253, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage(personImage),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(
                          child: CustomText(
                            text: 'Oranos',
                            color: AppColors.kTextColor1,
                            size: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(22, 145, 155, 1),
                            radius: 4,
                          ),
                        )
                      ],
                    ),
                    const Icon(Icons.circle_outlined)
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                indent: 1,
                color: Color.fromRGBO(163, 163, 163, 1),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: const [
                    CustomText(
                      text: 'Recommended Experts',
                      size: 16,
                      color: Color.fromRGBO(36, 39, 39, 0.8),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      color: Color.fromRGBO(36, 39, 39, 0.5),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: context.height * 0.35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardWidget(
                      image: person1Image,
                      name: 'Kareem Adel',
                      title: 'Supply Chain',
                      rate: '5.0',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CardWidget(
                      image: person2Image,
                      name: 'Merna Adel',
                      title: 'Supply Chain',
                      rate: '4.9',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: const [
                    CustomText(
                      text: 'Online Experts',
                      size: 16,
                      color: Color.fromRGBO(36, 39, 39, 0.8),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      color: Color.fromRGBO(36, 39, 39, 0.5),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: context.height * 0.1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CircleWidget(
                      image: person1Image,
                      name: 'Lance',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircleWidget(
                      image: person2Image,
                      name: 'Niles',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircleWidget(
                      image: person1Image,
                      name: ' Samuel',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircleWidget(
                      image: person2Image,
                      name: 'Hilary',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircleWidget(
                      image: person1Image,
                      name: 'Hanson',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(253, 253, 253, 1).withOpacity(0),
        elevation: 0,
        child: Container(
          height: 5,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
          ),
        ),
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.0))),
              context: context,
              builder: (context) {
                return ListView(
                  children: [
                    CardBottomSheetWidget(
                      image: patternImage,
                      title: 'Information Technology',
                      text: '23 Experts',
                    ),
                    CardBottomSheetWidget(
                      image: supplyChainImage,
                      title: 'Supply Chain',
                      text: '12 Experts',
                    ),
                    CardBottomSheetWidget(
                      image: securityImage,
                      title: 'Security',
                      text: '14 Experts',
                    ),
                    CardBottomSheetWidget(
                      image: humanResourceImage,
                      title: 'Human Resource',
                      text: '8 Experts',
                    ),
                    CardBottomSheetWidget(
                      image: immigrationImage,
                      title: 'Immigration',
                      text: '18 Experts',
                    ),
                    CardBottomSheetWidget(
                      image: translationImage,
                      title: 'Translation',
                      text: '2 Experts',
                    ),
                  ],
                );
              });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_outline_rounded,
              color: Colors.black,
            ),
            label: 'favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              color: Colors.black,
            ),
            label: 'wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'prefile',
          ),
        ],
      ),
    );
  }
}

// Widget buildBottomSheetWidget(){
//   return
// }
