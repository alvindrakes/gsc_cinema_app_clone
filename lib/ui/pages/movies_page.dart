import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsc_cinema/ui/components/carousel_poster.dart';
import 'package:gsc_cinema/ui/components/custom_navigation_bar.dart';
import 'package:gsc_cinema/ui/components/small_poster.dart';
import 'package:gsc_cinema/utils/data.dart';
import 'package:gsc_cinema/utils/device_screen.dart';

class MoviesPage extends StatelessWidget {
  Widget _buildCarouselPoster() {
    return SliverToBoxAdapter(
      child: Container(
        height: DeviceScreen.height * 0.45,
        child: ListView.builder(
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
    return SliverToBoxAdapter(
      child: Container(
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
      ),
    );
  }

  Widget _buildDivider() {
    return SliverToBoxAdapter(
      child: Row(
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNavigationBar(
        title: 'GSC cinema',
        showSearch: true,
      ),
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            _buildCarouselPoster(),
            // _buildDivider(),
            _buildSmallPosters(),
          ],
        ),
      ),
    );
  }
}
