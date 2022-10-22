import 'package:flutter/material.dart';

class ProjectColors {
  static const Color meteorite = Color(0xFF2C2078);
  static const Color puertoRico = Color(0xFF43C29C);
  static const Color white = Color(0xFFFFFFFF);
}

class ProjectTextStyle {
  static const TextStyle titleTextStyle =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: ProjectColors.white);
	static const TextStyle indebtedPersonTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white);
}
class ProjectSizedBox {
  static const SizedBox height10 = SizedBox(height: 10);
	static const SizedBox height20 = SizedBox(height: 20);
  static const SizedBox mainHeight = SizedBox(height: 36);
}

class ProjectDivider {
  static const Divider divider = Divider(thickness: 0.1, color: ProjectColors.white);
}
