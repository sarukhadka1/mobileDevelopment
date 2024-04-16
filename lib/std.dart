import 'batch.dart';
class Student{
  final String? studentName;
  final String? studentId;
  final String? batch;

  Student({
    this.studentId,
    this.studentName,
    this.batch,
    })
}
void main(){
  Student s1 = Student(studentId:'1',studentName:'kirna');
  Student s2 = Student(studentId:'2',studentName:'naina');
  Student s3 = Student(studentId:'3',studentName:'manoj');
  

}

