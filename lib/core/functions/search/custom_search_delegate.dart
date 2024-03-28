import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendspot_newes_app/core/api/dio_consumer.dart';
import 'package:trendspot_newes_app/core/api/endpoint.dart';
import 'package:trendspot_newes_app/core/functions/search/manager/search_cubit/search_cubit.dart';
import 'package:trendspot_newes_app/core/functions/search/repos/search_repo_implemntion.dart';
import 'package:trendspot_newes_app/core/utils/app_styles.dart';
import 'package:trendspot_newes_app/core/widgets/custom_articles_item/custom_articel_item.dart';

import 'package:trendspot_newes_app/core/widgets/view_single_item_view/data/explore_single_item_model.dart';
import 'package:trendspot_newes_app/core/widgets/view_single_item_view/presention/single_item_display.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showSearch(context: context, delegate: CustomSearchDelegate());
      },
      icon: const Icon(Icons.search),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Ethereum",
    "Cryptocurrency",
    "Blockchain",
    "Dogecoin",
    "NFTs",
    "Ripple",
    "Litecoin",
    "Digital currency",
    "Decentralized finance",
    "Smart contracts",
    "Altcoins",
    "Cardano",
    "Stablecoins",
    "Mining",
    "Binance Coin",
    "Solana",
    "Polkadot",
    "Monero",
    "Chainlink",
    "Ethereum 2.0",
    "Crypto wallet",
    "DeFi tokens",
    "Non-fungible tokens",
    "Crypto exchange",
    "Crypto market",
    "Cryptocurrency investment",
    "Crypto regulation",
    "Crypto trading",
    "Blockchain technology",
    "Cryptocurrency adoption",
    "Artificial intelligence",
    "Renewable energy",
    "Space exploration",
    "Climate change",
    "Quantum computing",
    "Genetic engineering",
    "Augmented reality",
    "Virtual reality",
    "5G technology",
    "Internet of Things (IoT)",
    "Biotechnology",
    "Sustainable development",
    "Autonomous vehicles",
    "Cybersecurity",
    "Machine learning",
    "Robotics",
    "Clean energy",
    "Nanotechnology",
    "Bioinformatics",
    "Quantum mechanics",
    "Astrophysics",
    "Marine biology",
    "Urban planning",
    "Aerospace engineering",
    "Neurobiology",
    "Cognitive psychology",
    "Geothermal energy",
    "Wind power",
    "Oceanography",
    "Meteorology",
    // Sports
    "Football", "Basketball", "Soccer", "Tennis", "Golf", "Baseball", "Rugby",
    "Cricket", "Swimming", "Athletics",
    "Boxing", "MMA", "Cycling", "Volleyball", "Gymnastics", "Ice Hockey",
    "Skiing", "Snowboarding", "Surfing",
    "Motorsports",
    "Wrestling",
    "Equestrian",
    "Table Tennis",
    "Badminton",
    "Archery",
    "Sailing",
    "Climbing",
    "Skateboarding",
    "Triathlon",
    "Water Polo",

    // Health
    "Nutrition", "Exercise", "Mental Health", "Yoga", "Meditation", "Dieting",
    "Wellness", "Weightlifting", "Running", "Pilates",
    "Holistic Health",
    "Stress Management",
    "Sleep Disorders",
    "Allergies",
    "Chronic Illnesses",
    "Alternative Medicine",
    "Physiotherapy",
    "Cardiology",
    "Dermatology",
    "Orthopedics",

    // Science
    "Astronomy", "Biology", "Chemistry", "Physics", "Neuroscience", "Genetics",
    "Environmental Science", "Paleontology", "Geology", "Meteorology",
    "Quantum Physics",
    "Marine Biology",
    "Botany",
    "Zoology",
    "Microbiology",
    "Nanotechnology",
    "Astrophysics",
    "Ecology",
    "Evolutionary Biology",
    "Artificial Intelligence",

    // Entertainment
    "Movies", "Music", "Television", "Celebrities", "Gaming", "Virtual Reality",
    "Augmented Reality", "Animation", "Comic Books", "Literature",
    "Theater", "Dance", "Stand-up Comedy", "Podcasts", "Concerts", "Festivals",
    "Art Exhibitions", "Fashion", "Cosplay", "Theme Parks",
    "Circus Performances", "Magic Shows", "Street Performances", "Drag Shows",
    "Improv Comedy", "Opera", "Ballet", "Puppetry", "Cabaret", "Burlesque"
  ];

  CustomSearchDelegate({
    super.searchFieldLabel,
    super.searchFieldStyle,
    super.searchFieldDecorationTheme,
    super.keyboardType,
    super.textInputAction,
  });
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(SeacrhRepoImplemntion(
          api: DioConsumer(
              dio: Dio(),
              exceptionType: 'News',
              baseUrl: EndPoint.newsBaseUrl)))
        ..displaySearchData(search: query),
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0, top: 10),
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            if (state is SearchSuccess) {
              return ListView.builder(
                  itemCount: state.news.length,
                  itemBuilder: (itemBuilder, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 24.0, right: 32),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (builder) {
                            return SingleItemDisplay(
                              exploreSingleItemModel: SingleItemModel(
                                title: state.news[index].title,
                                detailes:
                                    state.news[index].description ?? 'detailes',
                                date: state.news[index].publishedAt ?? '2024',
                                authorName:
                                    state.news[index].author ?? 'Lask news',
                                image: state.news[index].urlToImage ??
                                    'https://play-lh.googleusercontent.com/tuOKYu0gjp7YgLYn0eglI4j7c100lQjMLcRGnd0RKWx_WBBSgP4f1BNb1_EwCffYqtM',
                              ),
                            );
                          }));
                        },
                        child: CustomArticleItem(
                          date: state.news[index].publishedAt ?? '2024',
                          title: state.news[index].title,
                          imageUrl: state.news[index].urlToImage ??
                              'https://play-lh.googleusercontent.com/tuOKYu0gjp7YgLYn0eglI4j7c100lQjMLcRGnd0RKWx_WBBSgP4f1BNb1_EwCffYqtM',
                        ),
                      ),
                    );
                  });
            } else if (state is SearchFaliure) {
              return Text(state.errMsg);
            } else if (state is SearchLoading) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> filter = searchTerms.where((element) {
      return element.toLowerCase().contains(query.toLowerCase());
    }).toList();
    List<int> randomIndices =
        List<int>.generate(20, (index) => Random().nextInt(searchTerms.length));
    return query == ""
        ? ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              int randomIndex = randomIndices[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    query = searchTerms[randomIndex];
                    showResults(context);
                  },
                  child: Text(
                    searchTerms[randomIndex],
                    style: AppStyles.interStyleRegular16(context)
                        .copyWith(color: Colors.black),
                  ),
                ),
              );
            })
        : ListView.builder(
            itemCount: filter.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    query = filter[index];
                    showResults(context);
                  },
                  child: Text(
                    filter[index],
                    style: AppStyles.interStyleRegular16(context)
                        .copyWith(color: Colors.black),
                  ),
                ),
              );
            });
  }
}
