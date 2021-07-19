part of swagger.api;

class CreateOrEditCategoryDto {
  
  int categoryType = 1;
  

  int parentId = null;
  

  String displayName = null;
  

  int id = null;
  
  CreateOrEditCategoryDto();

  @override
  String toString() {
    return 'CreateOrEditCategoryDto[categoryType=$categoryType, parentId=$parentId, displayName=$displayName, id=$id, ]';
  }

  CreateOrEditCategoryDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    categoryType =
        json['categoryType']
    ;
    parentId =
        json['parentId']
    ;
    displayName =
        json['displayName']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'categoryType': categoryType,
      'parentId': parentId,
      'displayName': displayName,
      'id': id
     };
  }

  static List<CreateOrEditCategoryDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrEditCategoryDto>() : json.map((value) => new CreateOrEditCategoryDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditCategoryDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditCategoryDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditCategoryDto.fromJson(value));
    }
    return map;
  }
}

