class thread {
  String? name;
  String? posted;
  String? description;
  String? image;
  String? profileImage;
  String? replies;
  String? replier;
  String? replier1;
  String? replier2;
  String? likes;

  thread(
      this.name,
      this.description,
      this.image,
      this.posted,
      this.profileImage,
      this.replies,
      this.replier,
      this.replier1,
      this.replier2,
      this.likes);

  factory thread.formJson(Map<String, String> jsonObject) {
    return thread(
        jsonObject['name'],
        jsonObject['description'],
        jsonObject['image'],
        jsonObject['posted'],
        jsonObject['profileImage'],
        jsonObject['replies'],
        jsonObject['replier'],
        jsonObject['replier1'],
        jsonObject['replier2'],
        jsonObject['likes']);
  }
}
