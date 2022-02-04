class MyAnimalsModel {
  MyAnimalsModel({
    this.id,
    this.name,
    this.description,
    this.percentFood,
    this.percentMade,
    this.count,
    this.slug,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.img,
  });

  int? id;
  String? name;
  String? description;
  int? percentFood;
  int? percentMade;
  int? count;
  String? slug;
  DateTime? publishedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  Img? img;

  factory MyAnimalsModel.fromJson(Map<String, dynamic> json) => MyAnimalsModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        percentFood: json["percent_food"],
        percentMade: json["percent_made"],
        count: json["count"],
        slug: json["slug"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        img: Img.fromJson(json["img"]),
      );
}

class Img {
  Img({
    this.id,
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? alternativeText;
  String? caption;
  int? width;
  int? height;
  Formats? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  dynamic providerMetadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Img.fromJson(Map<String, dynamic> json) => Img(
        id: json["id"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"].toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}

class Formats {
  Formats({
    this.thumbnail,
    this.large,
    this.medium,
    this.small,
  });

  Large? thumbnail;
  Large? large;
  Large? medium;
  Large? small;

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: Large.fromJson(json["thumbnail"]),
        large: Large.fromJson(json["large"]),
        medium: Large.fromJson(json["medium"]),
        small: Large.fromJson(json["small"]),
      );
}

class Large {
  Large({
    this.name,
    this.hash,
    this.ext,
    this.mime,
    this.width,
    this.height,
    this.size,
    this.path,
    this.url,
  });

  String? name;
  String? ext;
  String? hash;
  String? mime;
  int? width;
  int? height;
  double? size;
  dynamic path;
  String? url;

  factory Large.fromJson(Map<String, dynamic> json) => Large(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        width: json["width"],
        height: json["height"],
        size: json["size"].toDouble(),
        path: json["path"],
        url: json["url"],
      );
}
