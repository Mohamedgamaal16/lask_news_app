class EndPoint {
  static String regestrionBaseUrl = "https://food-api-omega.vercel.app/api/v1/";
  static String signIn = "user/signin";
  static String signUp = "user/signup";
  static String justForYouBaseUrl = "https://newsapi.org/v2/";
  static String topHeadlines = "top-headlines";
  // static String categories = "top-headlines";
  // category=science
 static String categories(category) {
    return "$topHeadlines?category=$category";
  }
  static String getUserDataEndPoint(id) {
    return "user/get-user/$id";
  }
}

class RegestrionApiKey {
  static String status = "status";
  static String errorMessage = "ErrorMessage";
  static String email = "email";
  static String password = "password";
  static String token = "token";
  static String message = "message";
  static String id = "id";
  static String name = "name";
  static String phone = "phone";
  static String confirmPassword = "confirmPassword";
  static String location = "location";
  static String profilePic = "profilePic";
}
