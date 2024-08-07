class UserModel {
  String? id;
  String? name;
  String? email;
  String? phoneNo;
  String? dateOfBirth;
  String? imageUrl;
  String? address;

  UserModel({this.id, this.name, this.email, this.phoneNo, this.dateOfBirth, this.imageUrl, this.address});

  UserModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["phoneNo"] is String) {
      phoneNo = json["phoneNo"];
    }
    if(json["dateOfBirth"] is String) {
      dateOfBirth = json["dateOfBirth"];
    }
    if(json["imageUrl"] is String) {
      imageUrl = json["imageUrl"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["email"] = email;
    _data["phoneNo"] = phoneNo;
    _data["dateOfBirth"] = dateOfBirth;
    _data["imageUrl"] = imageUrl;
    _data["address"] = address;
    return _data;
  }
}