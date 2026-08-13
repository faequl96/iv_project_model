class QueryRequest({
  final int? page,
  final int? limit,
  final Sort? sort,
  final List<FilterGroup>? filterGroups,
}) {
  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'limit': limit,
      'sort': sort?.toJson(),
      'filter_groups': filterGroups?.map((item) => item.toJson()).toList(),
    };
  }
}

enum SortType() {
  asc,
  desc
}

class Sort({required final String key, final SortType type = .asc}) {
  Map<String, dynamic> toJson() {
    return {'key': key, 'type': type.name};
  }
}

enum JoinType() {
  and,
  or
}

class FilterGroup({required final JoinType joinType, required final List<Filter> filters}) {
  Map<String, dynamic> toJson() {
    return {'join_type': joinType.name, 'filters': filters.map((item) => item.toJson()).toList()};
  }
}

enum OperatorType() {
  equals,
  like,
  greaterThan,
  lessThan,
  greaterThanOrEqual,
  lessThanOrEqual
}

extension OperatorTypeExtension on OperatorType {
  String toJson() => switch (this) {
    .equals => 'equals',
    .like => 'like',
    .greaterThan => 'greater_than',
    .lessThan => 'less_than',
    .greaterThanOrEqual => 'greater_than_or_equal',
    .lessThanOrEqual => 'less_than_or_equal',
  };
}

class const Filter({
  required final String field,
  required final OperatorType operator,
  required final String value,
}) {
  Map<String, dynamic> toJson() => {'field': field, 'operator': operator.toJson(), 'value': value};
}
