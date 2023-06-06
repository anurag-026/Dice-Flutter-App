import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(context) {
    return AppBar(
      backgroundColor: Colors.lightBlueAccent,
      title: const Center(child: Text('Dice Roll')),
      actions: [
        PopupMenuButton(
          elevation: 10,
          color: Color.fromARGB(255, 217, 233, 241),
          itemBuilder: (context) {
            return [
              const PopupMenuItem(
                onTap: null,
                child: Text(
                  'App 1',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const PopupMenuItem(
                onTap: null,
                child: Text(
                  'App 2',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const PopupMenuItem(
                onTap: null,
                child: Text(
                  'App 3',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ];
          },
        )
      ],
    );
  }
}
