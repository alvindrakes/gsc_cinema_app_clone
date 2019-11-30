import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/ui/components/carousel_poster.dart';
import 'package:gsc_cinema/ui/components/small_poster.dart';
import 'package:gsc_cinema/utils/data.dart';
import 'package:gsc_cinema/utils/device_screen.dart';

class MoviesPage extends StatelessWidget {
  Widget _buildCarouselPoster() {
    return Expanded(
      child: Container(
        child: ListView.builder(
          physics: ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: Data.cinemaPosterUrl.length,
          itemBuilder: (context, index) {
            return CarouselPoster(
              imageUrl: Data.cinemaPosterUrl[index],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSmallPosters() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: GridView.builder(
          primary: false,
          physics: NeverScrollableScrollPhysics(),
          itemCount: Data.cinemaPosterUrl.length,
          itemBuilder: (context, index) {
            return SmallPoster(
              imageUrl: Data.cinemaPosterUrl[index],
              movieTitle: Data.movieTitles[index],
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            childAspectRatio: 2 / 3,
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Now Showing',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Advance Sales',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        backgroundColor: Colors.black,
        middle: Text(
          'GSC cinema',
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildCarouselPoster(),
          _buildDivider(),
          _buildSmallPosters(),
        ],
      ),
    );
  }
}
