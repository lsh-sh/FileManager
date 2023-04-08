import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:filemanager/app/constans/app_constants.dart';

class CardCloud extends StatelessWidget {
  const CardCloud(
      {Key? key,
      required this.title,
      required this.serviceName,
      required this.totalStorage,
      required this.color,
      required this.imageAsset})
      : super(key: key);
  final String title;
  final String serviceName;
  final String totalStorage;
  final Color color;
  final String imageAsset;

  static const height = 280.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultSpacing),
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [color, color.withOpacity(.5)]),
          boxShadow: [
            BoxShadow(
                color: color.withOpacity(.5),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 5))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(title),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _subtitle(serviceName, totalStorage),
              Image.asset(
                imageAsset,
                fit: BoxFit.contain,
                height: 100,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _title(String text) {
    return Text(
      text.capitalizeFirst!,
      style: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _subtitle(String serviceName, String storage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          serviceName.capitalizeFirst!,
          style: const TextStyle(fontSize: 18, color: Colors.white),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 10),
        Container(
          width: 100,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Text(
            storage.toUpperCase(),
            style: TextStyle(
                fontSize: 18, color: color, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
