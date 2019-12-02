import 'package:flutter/material.dart';

class myCard extends StatelessWidget {
  String _title;
  String _bgName;
  Widget _nextPage;

  myCard(this._title, this._bgName, this._nextPage);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Container(
          height: 100,
          child: Center(
            child: Text(
              this._title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/${this._bgName}"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      onTap: () => {
        if (this._nextPage != null)
          {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => _nextPage),
            ),
          }
      },
    );
  }
}
