abstract class NewsStates {}

class NewsInitialStates extends NewsStates {}

class NewsBottomNavStates extends NewsStates {}

class NewsGetBusinessLodingStates extends NewsStates {}

class NewsGetBusinessSuccessStates extends NewsStates {}

class NewsGetBusinessErrorStates extends NewsStates {
  final String error;

  NewsGetBusinessErrorStates(this.error);
}

class NewsGetSportsLodingStates extends NewsStates {}

class NewsGetSportsSuccessStates extends NewsStates {}

class NewsGetSportsErrorStates extends NewsStates {
  final String error;

  NewsGetSportsErrorStates(this.error);
}

class NewsGetScienceLodingStates extends NewsStates {}

class NewsGetScienceSuccessStates extends NewsStates {}

class NewsGetScienceErrorStates extends NewsStates {
  final String error;

  NewsGetScienceErrorStates(this.error);
}

class NewsChangeModeStates extends NewsStates {}


class NewsGetSearchLodingStates extends NewsStates {}

class NewsGetSearchSuccessStates extends NewsStates {}

class NewsGetSearchErrorStates extends NewsStates {
  final String error;

  NewsGetSearchErrorStates(this.error);
}