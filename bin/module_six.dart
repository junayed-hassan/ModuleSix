class Book {
  String title;
  String author;
  double price;

  // Constructor
  Book(this.title, this.author, this.price);

  // Method to calculate discounted price
  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  // Method to display book details
  void display(double discountPercent) {
    print("Title: $title");
    print("Author: $author");
    print("Original Price: $price");
    print("Discounted Price: ${discountedPrice(discountPercent)}");
    print("-----------------------------------");
  }
}

void main() {
  // Creating two Book objects
  Book book1 = Book("Dart Programming", "John Doe", 500);
  Book book2 = Book("Flutter Development", "Jane Smith", 800);

  // Display details
  book1.display(10); // 10% discount
  book2.display(20); // 20% discount
}
