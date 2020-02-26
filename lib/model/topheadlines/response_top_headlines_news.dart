import 'package:json_annotation/json_annotation.dart';
part 'response_top_headlines_news.g.dart';

@JsonSerializable()
class ResponseTopHeadlinesNews {
  ResponseTopHeadlinesNews(this.status, this.totalResults, this.articles);

  factory ResponseTopHeadlinesNews.fromJson(Map<String, dynamic> json) =>
      _$ResponseTopHeadlinesNewsFromJson(json);

  ResponseTopHeadlinesNews.withError(this.error);

  List<Article> articles;
  String status;
  int totalResults;

  @override
  String toString() {
    return 'ResponseTopHeadlinesNews{status: $status, totalResults: $totalResults, articles: $articles, error: $error}';
  }

  @JsonKey(ignore: true)
  String error;

  Map<String, dynamic> toJson() => _$ResponseTopHeadlinesNewsToJson(this);
}

@JsonSerializable()
class Article {
  Article(this.source, this.author, this.title, this.description, this.url,
      this.urlToImage, this.publishedAt, this.content);

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  String author;
  String content;
  String description;
  String publishedAt;
  Source source;
  String title;
  String url;
  String urlToImage;

  @override
  String toString() {
    return 'Article{source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content}';
  }

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}

@JsonSerializable()
class Source {
  Source(this.name);

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  String name;

  @override
  String toString() {
    return 'Source{name: $name}';
  }

  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
