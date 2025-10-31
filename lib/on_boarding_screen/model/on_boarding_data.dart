import 'package:flutter/material.dart';
import 'package:mymovies/core/assets_manager.dart';
import 'package:mymovies/l10n/app_localizations.dart';

class OnBoardingData {
  final String image;
  final String title;
  final String? description;

  OnBoardingData({
    required this.image ,
    required this.title ,
    this.description ,
  });

  // static List<OnBoardingData> onBoardingList = [
  //   OnBoardingData(  image: AssetsManager.onBoardingImage1, title: "Find Your Next Favorite Movie Here" , description: "Get access to a huge library of movies to suit all tastes. You will surely like it."),
  //   OnBoardingData(  image: AssetsManager.onBoardingImage2, title: "Discover Movies" , description: "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease."),
  //   OnBoardingData(  image: AssetsManager.onBoardingImage3, title: "Explore All Genres" , description: "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day."),
  //   OnBoardingData(  image: AssetsManager.onBoardingImage4, title: "Create Watchlists" , description: "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres."),
  //   OnBoardingData(  image: AssetsManager.onBoardingImage5, title: "Rate, Review, and Learn" , description: "Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews."),
  //   OnBoardingData(  image: AssetsManager.onBoardingImage6, title: "Start Watching Now" , description: ""),
  // ];

  static List<OnBoardingData> getOnBoardingList(BuildContext context) {
    return [
      OnBoardingData(
        image: AssetsManager.onBoardingImage1, 
        title: AppLocalizations.of(context)!.find_your_next_favorite_movie_here , 
        description: AppLocalizations.of(context)!.get_access_to_a_huge
      ),
      OnBoardingData(
        image: AssetsManager.onBoardingImage2, 
        title: AppLocalizations.of(context)!.discover_movies , 
        description: AppLocalizations.of(context)!.explore_a_vast_collection
      ),
      OnBoardingData(
        image: AssetsManager.onBoardingImage3, 
        title: AppLocalizations.of(context)!.explore_all_genres , 
        description: AppLocalizations.of(context)!.discover_movies_from_every_genre
      ),
      OnBoardingData(
        image: AssetsManager.onBoardingImage4, 
        title: AppLocalizations.of(context)!.create_Watchlists , 
        description: AppLocalizations.of(context)!.save_movies_to_your_watchlist_to_keep
      ),
      OnBoardingData(
        image: AssetsManager.onBoardingImage5, 
        title: AppLocalizations.of(context)!.rate_review_and_learn , 
        description: AppLocalizations.of(context)!.share_your_thoughts_on_the_movies
      ),
      OnBoardingData(
        image: AssetsManager.onBoardingImage6, 
        title: AppLocalizations.of(context)!.start_Watching_now , 
        description: ""
      ),
  ];
  }
  
}