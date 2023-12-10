/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

import 'package:ny_times_most_popular_articles/features/home/domain/entities/article_entity.dart';

ArticleModel articleModelFromJson(String str) => ArticleModel.fromJson(json.decode(str));
class ArticleModel extends ArticleEntity{
    ArticleModel({
        required this.perFacet,
        required this.etaId,
        required this.subsection,
        required this.orgFacet,
        required this.nytdsection,
        required this.section,
        required this.assetId,
        required this.source,
        required this.articleModelAbstract,
        required this.media,
        required this.type,
        required this.title,
        required this.desFacet,
        required this.uri,
        required this.url,
        required this.adxKeywords,
        required this.geoFacet,
        required this.id,
        required this.publishedDate,
        required this.updated,
        required this.byline,
    }) : super(articleImage: media!.isNotEmpty?media.first.mediaMetadata.first.url:'', articleTitle: title, articleByline: byline, articlePublishDate: publishedDate.toString(), articleAbstract: articleModelAbstract, articleSource: source, articleBanner: media.isNotEmpty?media.first.mediaMetadata.last.url:'');

    List<String> perFacet;
    int etaId;
    String subsection;
    List<String> orgFacet;
    String nytdsection;
    String section;
    int assetId;
    String source;
    String articleModelAbstract;
    List<Media>? media;
    String type;
    String title;
    List<String> desFacet;
    String uri;
    String url;
    String adxKeywords;
    List<String> geoFacet;
    int id;
    String publishedDate;
    DateTime updated;
    String byline;

    factory ArticleModel.fromJson(Map<dynamic, dynamic> json) {
        return ArticleModel(
            perFacet: List<String>.from(json["per_facet"].map((x) => x)),
            etaId: json["eta_id"],
            subsection: json["subsection"],
            orgFacet: List<String>.from(json["org_facet"].map((x) => x)),
            nytdsection: json["nytdsection"],
            section: json["section"],
            assetId: json["asset_id"],
            source: json["source"],
            articleModelAbstract: json["abstract"],
            media: List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
            type: json["type"],
            title: json["title"],
            desFacet: List<String>.from(json["des_facet"].map((x) => x)),
            uri: json["uri"],
            url: json["url"],
            adxKeywords: json["adx_keywords"],
            geoFacet: List<String>.from(json["geo_facet"].map((x) => x)),
            id: json["id"],
            publishedDate: json["published_date"],
            updated: DateTime.parse(json["updated"]),
            byline: json["byline"],
        );
    }
}

class Media {
    Media({
        required this.copyright,
        required this.mediaMetadata,
        required this.subtype,
        required this.caption,
        required this.type,
        required this.approvedForSyndication,
    });

    String copyright;
    List<MediaMetadatum> mediaMetadata;
    String subtype;
    String? caption;
    String type;
    int approvedForSyndication;

    factory Media.fromJson(Map<dynamic, dynamic> json) => Media(
        copyright: json["copyright"],
        mediaMetadata: List<MediaMetadatum>.from(json["media-metadata"].map((x) => MediaMetadatum.fromJson(x))),
        subtype: json["subtype"],
        caption: json["caption"]?? '',
        type: json["type"],
        approvedForSyndication: json["approved_for_syndication"],
    );

    Map<dynamic, dynamic> toJson() => {
        "copyright": copyright,
        "media-metadata": List<dynamic>.from(mediaMetadata.map((x) => x.toJson())),
        "subtype": subtype,
        "caption": caption,
        "type": type,
        "approved_for_syndication": approvedForSyndication,
    };
}

class MediaMetadatum {
    MediaMetadatum({
        required this.format,
        required this.width,
        required this.url,
        required this.height,
    });

    String format;
    int width;
    String url;
    int height;

    factory MediaMetadatum.fromJson(Map<dynamic, dynamic> json) => MediaMetadatum(
        format: json["format"],
        width: json["width"],
        url: json["url"],
        height: json["height"],
    );

    Map<dynamic, dynamic> toJson() => {
        "format": format,
        "width": width,
        "url": url,
        "height": height,
    };
}
