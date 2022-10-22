import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomDebtsWidget extends StatefulWidget {
	const CustomDebtsWidget({super.key,required this.name,required this.time,required this.price, required this.surname});
	final String name;
	final String surname;
	final String time;
	final int price;

	@override
	State<CustomDebtsWidget> createState() => _CustomDebtsWidgetState();
}

class _CustomDebtsWidgetState extends State<CustomDebtsWidget> {
	@override
	Widget build(BuildContext context) {
		return Container(
                      width: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
													mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                             Text(
                              widget.name,
                              textAlign: TextAlign.center,
                              style: ProjectTextStyle.indebtedPersonTextStyle,
                            ),
														Text(
                              widget.surname,
                              textAlign: TextAlign.center,
                              style: ProjectTextStyle.indebtedPersonTextStyle,
                            ),
                            Text(
                             widget.time,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontFamily: 'OpenSans-Regular', color: Colors.grey[500]),
                            ),
                            Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.red[400],
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(12)),
                              child:  Center(
                                  child: Text(
                                '${widget.price.toString()} ₺',
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                              )),
                            ),
                          ],
                        ),
                      ),
                    );
	}
}
