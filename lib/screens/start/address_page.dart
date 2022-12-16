import 'package:flutter/material.dart';

class AddreesPage extends StatelessWidget {
  const AddreesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                    Icons.search),
<<<<<<< HEAD
                hintText: '로그인',
                hintStyle: TextStyle(color: Theme.of(context).hintColor),
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey),),

                prefixIconConstraints:
=======
              hintText: '도로명으로 검색',
              hintStyle: TextStyle(color: Theme.of(context).hintColor),
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey),),

              prefixIconConstraints:
>>>>>>> origin/main
                BoxConstraints(minWidth: 24, minHeight: 24)
            ),
          )
        ],
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> origin/main
