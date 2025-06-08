void main(){
  final int n = 15;
  int x = 0;
  int y = 1;
  int z =0;
  print (x);
  
  for(int i= 1; i<n; i++){
    z= x+y;
    print(z);
    x=y;
    y=z;
  }
}