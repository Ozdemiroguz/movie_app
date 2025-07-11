// lib/features/movies/domain/models/pagination.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
abstract class Pagination with _$Pagination {
  const Pagination._();

  const factory Pagination({
    required int currentPage,
    required int totalPages,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      // Güvenli tip dönüşümü ve null kontrolü
      currentPage: json['currentPage'] as int? ?? 0,
      totalPages: json['maxPage'] as int? ??
          0, // API'de 'maxPage' olarak geldiğini varsayarak
    );
  }
}
