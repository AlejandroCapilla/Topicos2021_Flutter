import 'package:flutter/material.dart';
import 'package:practica2/models/popularDAO.dart';

class CardPopular extends StatelessWidget {
  const CardPopular({Key? key, required this.movie}) : super(key: key);
  final Results movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            offset: Offset(0.0, 0.5),
            blurRadius: 1.0
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width:MediaQuery.of(context).size.width,
              child: FadeInImage(
                placeholder: AssetImage('assets/activity_indicator.gif'),
                image: movie.backdrop_path != ""
                  ? NetworkImage('https://image.tmdb.org/t/p/w500/${movie.backdrop_path}')
                  : NetworkImage('https://www.te.gob.mx/media/images/portal/imagen-no-disponible.png'),
                fadeInDuration: Duration(milliseconds: 500),
              ),
            ),
            Opacity(
                opacity: .6,
                child: Container(
                height: 55.0,
                color: Colors.black,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(movie.title, style: TextStyle(color: Colors.white, fontSize: 18.0),),
                    IconButton(
                      onPressed: () {}, 
                      color: Colors.white,
                      icon: Icon(Icons.chevron_right),
                      )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}