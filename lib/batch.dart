class Batch{
  final String? batchId;
  final String batchName;

  Batch({
    this.batchId,
    required this.batchName,
  });

void main(){
  Batch b1 = Batch(batchId: '1',batchName: '32-a');
  Batch b2 = Batch(batchId: '1',batchName: '32-b');
  Batch b3 = Batch(batchId: '2',batchName: '32-c');
  

}  

}