import 'package:debt_tracker_app/constants/constants.dart';
import 'package:debt_tracker_app/widgets/debts_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String dashboard = 'Borç Takip';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ProjectColors.meteorite,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              ProjectSizedBox.mainHeight,
              _infoRow(),
              ProjectSizedBox.height10,
              ProjectDivider.divider,
              Container(
                height: 320,
                color:Colors.black 
              ),
              ProjectSizedBox.height10,
              ProjectDivider.divider,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Alınacak Ödemeler',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Tümünü Görüntüle',
                        style: TextStyle(color: Colors.grey[500]),
                      ))
                ],
              ),
              ProjectSizedBox.height10,
              SizedBox(
                height: 145,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    CustomDebtsWidget(name: 'Oğuzhan',surname:'Yıldırım' ,time: '21 Ekim',price: 120,),
										CustomDebtsWidget(name: 'Aslı',surname:'Yıldırım' ,time: '19 Ekim',price: 70,),
										CustomDebtsWidget(name: 'Filiz',surname:'Yıldırım' ,time: '10 Ekim',price: 50,),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Row _infoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _userButton(),
        _dashboardTitleText(),
        _natificationButton(),
      ],
    );
  }

  Text _dashboardTitleText() {
    return Text(
      dashboard,
      style: ProjectTextStyle.titleTextStyle,
    );
  }

  Container _userButton() {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: ProjectColors.white),
          borderRadius: BorderRadius.circular(20)),
      child: IconButton(
        icon: const Icon(Iconsax.user, color: ProjectColors.white),
        onPressed: () {},
      ),
    );
  }

  Container _natificationButton() {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: ProjectColors.white, width: 1),
          borderRadius: BorderRadius.circular(20)),
      child: IconButton(
        icon: const Icon(
          Iconsax.notification,
          color: ProjectColors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
