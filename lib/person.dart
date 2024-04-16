//create a class name person fname lname age address, phone number and person id.

// PascalCase
class Person{
  final int? personId;
  final String? fname;
  final String? lname;
  final String? address;
  final String? phoneNo;
  final int? age;
  // Contructor
  Person({required this.personId,this.fname,this.lname,this.address,this.age,this.phoneNo,});

  // COpy with

  Person copyWith({
    int? personId, String? fname, String? lname, String? address,
    String? phoneNo, int? age
  }){
    return Person(
      personId: personId ?? personId,
      fname : fname ?? this.fname,
      lname : lname ?? this.lname,
      address : address ?? this.address,
      phoneNo : phoneNo ?? this.phoneNo,
      age : age ?? this.age,
    );
  }
}

void main(){
  var p = Person(personId:1,fname:'asd', lname: 'Rana',
          address: 'KTM',age:1,phoneNo: 'asd');

  Person p2 = p.copyWith(personId:2);
  Person p3 = p.copyWith(personId:3, fname:'bibek');
  Person p4 = p.copyWith(personId:4, fname: 'ssd');
  Person p5 = p.copyWith(personId:5, fname: 'qwe');
  print(p2.lname);
  
  List<Person>firstPerson= [];
  firstPerson.add(p);
  firstPerson.add(p2);
  firstPerson.add(p5);
  firstPerson.add(p3);
  firstPerson.add(p4);

  for(var p in firstPerson){
    print('fname : ${p.fname}, address: ${p.address}');
  }
}
//add person in list

class Teacher{
  final String? teacherName;
  final String? teacherId;
}