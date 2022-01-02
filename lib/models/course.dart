class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;
  String description;

  Course(
      this.author, this.authorImg, this.title, this.imageUrl, this.description);

  static List<Course> generateCourse() {
    return [
      Course('Juan Rios', 'assets/pro1.png', 'Watercolors', 'assets/img2.jpg',
          'Velit deserunt cillum sint cillum est Lorem. Qui eiusmod ea qui cupidatat esse minim duis deserunt. '),
      Course('Brahm Smith', 'assets/pro2.png', 'Music', 'assets/img3.jpg',
          'Amet nostrud pariatur quis minim sint adipisiciEt laboris ea mollit cillum aliquip culpa nulla duis laborum est do et minim ad. ng magna exercitation aliqua ea reprehenderit.'),
      Course('Valen Lourse', 'assets/pro3.png', 'Bikes', 'assets/img1.jpg',
          'Aliqua aliqua et non cupidatat incididunt tempor Quis dolore nisi aliquip ad nisi exercitation exercitation eu excepteur laboris. non.'),
    ];
  }
}
