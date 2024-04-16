import 'batch.dart';
import 'std.dart';
void main(){
  Batch b1 = Batch (batchName: '32-a');
  Batch b2 = Batch (batchName: '32-b');
  Batch b3 = Batch (batchName: '32-c');

  Student s1= Student(studentName: 'kiran', batch: b1);
  Student s2= Student(studentName: 'nitya', batch: b1);
  Student s3= Student(studentName: 'manoj', batch: b2);

  List<Student>lstStudents = [s1,s2,s3];
  for (Student s in lstStudents){
    print('${s.studentName}studies in ${s.batch!.batchName}');
  }

  
}