// To parse this JSON data, do
//
//     final apiResponseModel = apiResponseModelFromJson(jsonString);

import 'dart:convert';

ApiResponseModel apiResponseModelFromJson(String str) =>
    ApiResponseModel.fromJson(json.decode(str));

String apiResponseModelToJson(ApiResponseModel data) =>
    json.encode(data.toJson());

class ApiResponseModel {
  ApiResponseModel({
    required this.body,
    required this.status,
  });

  Body body;
  String status;

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) =>
      ApiResponseModel(
        body: Body.fromJson(json["body"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "body": body.toJson(),
        "status": status,
      };
}

class Body {
  Body({
    required this.banners,
    required this.featuredCategories,
    required this.featuredCourses,
    required this.popularCourses,
    required this.popularInstructors,
    required this.liveClasses,
  });

  List<String> banners;
  List<FeaturedCategory> featuredCategories;
  List<Course> featuredCourses;
  List<Course> popularCourses;
  List<PopularInstructor> popularInstructors;
  List<LiveClass> liveClasses;

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        banners: List<String>.from(json["banners"].map((x) => x)),
        featuredCategories: List<FeaturedCategory>.from(
            json["featured_categories"]
                .map((x) => FeaturedCategory.fromJson(x))),
        featuredCourses: List<Course>.from(
            json["featured_courses"].map((x) => Course.fromJson(x))),
        popularCourses: List<Course>.from(
            json["popular_courses"].map((x) => Course.fromJson(x))),
        popularInstructors: List<PopularInstructor>.from(
            json["popular_instructors"]
                .map((x) => PopularInstructor.fromJson(x))),
        liveClasses: List<LiveClass>.from(
            json["live_classes"].map((x) => LiveClass.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "banners": List<dynamic>.from(banners.map((x) => x)),
        "featured_categories":
            List<dynamic>.from(featuredCategories.map((x) => x.toJson())),
        "featured_courses":
            List<dynamic>.from(featuredCourses.map((x) => x.toJson())),
        "popular_courses":
            List<dynamic>.from(popularCourses.map((x) => x.toJson())),
        "popular_instructors":
            List<dynamic>.from(popularInstructors.map((x) => x.toJson())),
        "live_classes": List<dynamic>.from(liveClasses.map((x) => x.toJson())),
      };
}

class FeaturedCategory {
  FeaturedCategory({
    required this.id,
    required this.name,
    required this.image,
  });

  int id;
  String name;
  String image;

  factory FeaturedCategory.fromJson(Map<String, dynamic> json) =>
      FeaturedCategory(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
      };
}

class Course {
  Course({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.subcategoryId,
    required this.userId,
    required this.description,
    required this.objective,
    required this.benefit,
    required this.audience,
    required this.level,
    required this.language,
    required this.duration,
    required this.numberOfLesson,
    required this.image,
    required this.slug,
    required this.rating,
    required this.ratingCount,
    required this.views,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.instructorName,
    required this.instructorImage,
  });

  int id;
  String name;
  int categoryId;
  int subcategoryId;
  int userId;
  String description;
  String objective;
  String benefit;
  String audience;
  String level;
  String language;
  String duration;
  String numberOfLesson;
  String image;
  String slug;
  String rating;
  int ratingCount;
  String views;
  String status;
  DateTime createdAt;
  DateTime updatedAt;
  String instructorName;
  String instructorImage;

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        name: json["name"],
        categoryId: json["category_id"],
        subcategoryId: json["subcategory_id"],
        userId: json["user_id"],
        description: json["description"],
        objective: json["objective"],
        benefit: json["benefit"],
        audience: json["audience"],
        level: json["level"],
        language: json["language"],
        duration: json["duration"],
        numberOfLesson: json["number_of_lesson"],
        image: json["image"],
        slug: json["slug"],
        rating: json["rating"],
        ratingCount: json["rating_count"],
        views: json["views"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        instructorName: json["instructor_name"],
        instructorImage: json["instructor_image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category_id": categoryId,
        "subcategory_id": subcategoryId,
        "user_id": userId,
        "description": description,
        "objective": objective,
        "benefit": benefit,
        "audience": audience,
        "level": level,
        "language": language,
        "duration": duration,
        "number_of_lesson": numberOfLesson,
        "image": image,
        "slug": slug,
        "rating": rating,
        "rating_count": ratingCount,
        "views": views,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "instructor_name": instructorName,
        "instructor_image": instructorImage,
      };
}

class LiveClass {
  LiveClass({
    required this.id,
    required this.userId,
    required this.name,
    required this.description,
    required this.image,
    required this.status,
    required this.startsAt,
  });

  int id;
  int userId;
  String name;
  String description;
  String image;
  String status;
  DateTime startsAt;

  factory LiveClass.fromJson(Map<String, dynamic> json) => LiveClass(
        id: json["id"],
        userId: json["user_id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        status: json["status"],
        startsAt: DateTime.parse(json["starts_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "name": name,
        "description": description,
        "image": image,
        "status": status,
        "starts_at": startsAt.toIso8601String(),
      };
}

class PopularInstructor {
  PopularInstructor({
    required this.id,
    required this.name,
    required this.image,
    required this.occupation,
    required this.experience,
    required this.specialization,
  });

  int id;
  String name;
  String image;
  String occupation;
  String experience;
  String specialization;

  factory PopularInstructor.fromJson(Map<String, dynamic> json) =>
      PopularInstructor(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        occupation: json["occupation"] == null ? null : json["occupation"],
        experience: json["experience"] == null ? null : json["experience"],
        specialization:
            json["specialization"] == null ? null : json["specialization"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "occupation": occupation == null ? null : occupation,
        "experience": experience == null ? null : experience,
        "specialization": specialization == null ? null : specialization,
      };
}
