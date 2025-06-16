class QueryRequest {
  QueryRequest({this.page, this.limit, this.sort, this.filterGroups});

  final int? page;
  final int? limit;
  final Sort? sort;
  final List<FilterGroup>? filterGroups;

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'limit': limit,
      'sort': sort?.toJson(),
      'filter_groups': filterGroups?.map((item) => item.toJson()).toList(),
    };
  }
}

enum SortType { asc, desc }

class Sort {
  Sort({required this.key, this.type = SortType.asc});

  final String key;
  final SortType type;

  Map<String, dynamic> toJson() {
    return {'key': key, 'type': type.name};
  }
}

enum JoinType { and, or }

class FilterGroup {
  FilterGroup({required this.joinType, required this.filters});

  final JoinType joinType;
  final List<Filter> filters;

  Map<String, dynamic> toJson() {
    return {'join_type': joinType.name, 'filters': filters.map((item) => item.toJson()).toList()};
  }
}

enum OperatorType { equals, like, greaterThan, lessThan, greaterThanOrEqual, lessThanOrEqual }

extension OperatorTypeExtension on OperatorType {
  String toJson() {
    switch (this) {
      case OperatorType.equals:
        return 'equals';
      case OperatorType.like:
        return 'like';
      case OperatorType.greaterThan:
        return 'greater_than';
      case OperatorType.lessThan:
        return 'less_than';
      case OperatorType.greaterThanOrEqual:
        return 'greater_than_or_equal';
      case OperatorType.lessThanOrEqual:
        return 'less_than_or_equal';
    }
  }
}

class Filter {
  const Filter({required this.field, required this.operator, required this.value});

  final String field;
  final OperatorType operator;
  final String value;

  Map<String, dynamic> toJson() => {'field': field, 'operator': operator.toJson(), 'value': value};
}
