import 'package:flutter/material.dart';

Widget MusicItem(
    {required String title,
    required String singer,
    required String cover,
    ontap}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                constraints: const BoxConstraints(maxHeight: 80, maxWidth: 80),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(image: NetworkImage(cover))),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(singer)
                ],
              )
            ],
          ),
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.download,
                color: Color.fromARGB(255, 19, 248, 138),
              ))
        ],
      ),
    ),
  );
}
