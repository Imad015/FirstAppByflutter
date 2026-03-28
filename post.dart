class post {
  var _litter = 'imad';
  var _like = 0;
  void plus() {
    _like++;
  }

  int getLike() {
    return _like;
  }

  int likss(int a) {
    if (a > 10) {
      print("enter like between 1 to 10");
      return _like;
    } else {
      _like = a;
      return _like;
    }
  }
}

void printt(String a) {
  print(a);
}
