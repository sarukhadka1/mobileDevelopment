// class Teacher{
//   final String? teacherName;
//   final String? teacherId;
//   Teacher({this.teacherId,this.teacherName});
// }
// class Student{
//   final String? stdFname;
//   final String? stdId;
//   List<Teacher>
//   Country? country;
//   Student({this.stdFname,this.stdId,this.country});
//   //relatoinship
//   // 0 or many
// }
// class Country{

// }

//print student and teacher deatils where they are. add multiple countries 
class Teacher{
  final String? tId;
  final String? tFname;
  Country? country;

  Teacher({this.tId,this.tFname,this.country});
}

class Student{
  final String? stdId;
  final String? stdFname;
  List<Teacher>? lstTeacher;
  Country? country;
  Student({this.stdId,this.stdFname,this.lstTeacher,this.country});
}

// class Country{
//   final String? cId;
//   final String? cName;

//   Country({this.cId,this.cName});
//   void main(){
//     var c1 = Country(cId: '1',cName: 'Nepal');
//     var c2 = Country(cId: '2',cName: 'india'); 
//     var c3 = Country(cId: '3',cName: 'china');
//     var c4 = Country(cId: '4',cName: 'bhutan');
//     var c5 = Country(cId: '5',cName: 'usa');
//   }
//   List<Country>nations= [];
//   nations.add(p);
//   nations.add(p2);
//   nations.add(p5);
//   nations.add(p3);
//   nations.add(p4);
// }
void main(){
  Country c = Country(cId:1,cName:'nepal');

  Teacher t = Teacher(tId:1, tFname:'Claire', country: c );
  Teacher t1 = Teacher(tId: 2, tFname: 'Gloria', country: c);
  Teacher t2 = Teacher(tId: 3, tFname: 'Mitchell', country: c);
  
  Student s1= Student(stdId:'S1', stdFname:'David', lstTeacher: [t], country: c);
  Student s2 = Student(stdId: 'S2', stdFname: 'Alice', lstTeacher: [t1, t2], country: c);
  Student s3 = Student(stdId: 'S3', stdFname: 'Bob', lstTeacher: [t2], country: c);
  
  print('Teacher: ${t.tFname}, Country: ${t.country?.cName}');
  print('Teacher 1: ${t1.tFname}, Country: ${t1.country?.cName}');
  print('Teacher 2: ${t2.tFname}, Country: ${t2.country?.cName}');
  print('Student 1: ${s1.stdFname}, Country: ${s1.country?.cName}');
  print('Student 2: ${s2.stdFname}, Country: ${s2.country?.cName}');
  print('Student 3: ${s3.stdFname}, Country: ${s3.country?.cName}');
}