// Review model
class Review {
  double? rating;
  String? comment;
  String? reviewerId;

  Review({
    this.rating,
    this.comment,
    this.reviewerId,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      rating: json['rating']?.toDouble(),
      comment: json['comment'],
      reviewerId: json['reviewer'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rating': rating,
      'comment': comment,
      'reviewer': reviewerId,
    };
  }
}
