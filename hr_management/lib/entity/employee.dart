class employee {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? gender;
  String? address;
  String? dateOfBirth;
  String? photo;
  String? joiningDate;
  int? department;
  int? designation;
  int? basicSalary;
  int? allowance;
  bool? active;

  employee(
      {this.id,
        this.name,
        this.email,
        this.phone,
        this.gender,
        this.address,
        this.dateOfBirth,
        this.photo,
        this.joiningDate,
        this.department,
        this.designation,
        this.basicSalary,
        this.allowance,
        this.active});

  employee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    gender = json['gender'];
    address = json['address'];
    dateOfBirth = json['dateOfBirth'];
    photo = json['photo'];
    joiningDate = json['joiningDate'];
    department = json['department'];
    designation = json['designation'];
    basicSalary = json['basicSalary'];
    allowance = json['allowance'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['address'] = this.address;
    data['dateOfBirth'] = this.dateOfBirth;
    data['photo'] = this.photo;
    data['joiningDate'] = this.joiningDate;
    data['department'] = this.department;
    data['designation'] = this.designation;
    data['basicSalary'] = this.basicSalary;
    data['allowance'] = this.allowance;
    data['active'] = this.active;
    return data;
  }
}
