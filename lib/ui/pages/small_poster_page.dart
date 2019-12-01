import 'package:flutter/cupertino.dart';
import 'package:gsc_cinema/ui/components/small_poster.dart';
import 'package:gsc_cinema/utils/data.dart';

class SmallPosterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: GridView.builder(
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
    );
  }
}
