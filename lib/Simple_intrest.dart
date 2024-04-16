void main(){
  print(simpleInterest(p: 20000,r: 1.4,t: 23,));
  print(simpleInterest(p: 20000,r: 1.4));

  print(simpleInterest2(p: 20000,r: 1.4,t: 23,));
  print(sI(200000,1.4,23));
}
double simpleInterest({
  double? p,double? r,double? t,}){
    return((p?? 0)* (r??0)*(t??0))/100;

}
double simpleInterest2(
  {required double p, required double r, required double t}){
    return (p*t*r)/100;
}


double sI(double p, double r, double t){
  return(p*t*r)/100;
}