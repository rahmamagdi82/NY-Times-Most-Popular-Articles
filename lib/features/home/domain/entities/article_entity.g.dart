// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ArticleEntityAdapter extends TypeAdapter<ArticleEntity> {
  @override
  final int typeId = 0;

  @override
  ArticleEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ArticleEntity(
      articleImage: fields[0] as String,
      articleTitle: fields[1] as String,
      articleByline: fields[2] as String,
      articlePublishDate: fields[3] as String,
      articleAbstract: fields[4] as String,
      articleSource: fields[5] as String,
      articleBanner: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ArticleEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.articleImage)
      ..writeByte(1)
      ..write(obj.articleTitle)
      ..writeByte(2)
      ..write(obj.articleByline)
      ..writeByte(3)
      ..write(obj.articlePublishDate)
      ..writeByte(4)
      ..write(obj.articleAbstract)
      ..writeByte(5)
      ..write(obj.articleSource)
      ..writeByte(6)
      ..write(obj.articleBanner);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArticleEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
