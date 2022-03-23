abstract class Poligono{
// atributos
static int _nroPoligonos=0;
int _nroLados=0;
// construtor
Poligono(this._nroLados ){
  if(_nroPoligonos<0){
    _nroPoligonos=1 ; 
  }else{
    _nroPoligonos++;
  }
}
// gets e sets
int getnroLados(){
return this._nroLados;
}
void setNroLados(int numLados){
this._nroLados=numLados;
}

// metodos

double getArea() ;

double getPerimetro();

String toString(){
return "Numero de lados = " + this._nroLados. toString()+ "\nPerimetro = " + getPerimetro().toString()
+ "\nArea = " + getArea().toString();
}
}



class Quadrado extends Poligono{
int _lado=0;

Quadrado(_nroLados,this._lado):super(_nroLados);

double getArea(){

return this._lado.toDouble() *this._lado.toDouble();

}
double getPerimetro(){

return (this._lado.toDouble()*4);
}

bool equals( Quadrado quadrado){
bool retorno = false;
if(quadrado._lado == this._lado){
retorno = true;
}
return retorno;
}

String toString(){
return super.toString()+"\nValor dos lados = " + this._lado.toString();
}
}

class Triangulo extends Poligono{
int _lado1=0,_lado2=0,_lado3=0;

//Construtor
Triangulo(nroLados,this._lado1,this._lado2,this._lado3):super(nroLados);

// metodos

bool _eTriangulo(){
bool retorno = false;
int soma12=this._lado1+this._lado2;
int soma23=this._lado2+this._lado3;
int soma31=this._lado1+this._lado3;

if(soma12 > this._lado3 || soma23 > this._lado1 || soma31> this._lado2 ){
retorno = true;
}
return retorno;
}

double getArea(){

double result=0;
if(_eTriangulo()==true){
if(this._lado1>this._lado2 && this._lado2>this._lado3){

result = (this._lado3*this._lado1)/2;
}

else if (this._lado1 > this._lado3 && this._lado3 > this._lado2)
{
result= (this._lado2 * this._lado1)/2;

}
else if (this._lado2 > this._lado3 && this._lado3 > this._lado1)
{
result = (this._lado1 * this._lado2)/2;
}
else if (this._lado2 > this._lado1 && this._lado1 > this._lado3)
{
result = (this._lado3 * this._lado2)/2;
}
else if (this._lado3 > this._lado1 && this._lado1 > this._lado2)
{
result = (this._lado2 * this._lado3)/2;
}
else if (this._lado3 > this._lado2 && this._lado2 > this._lado1)
{
result = (this._lado1 * this._lado3)/2;
}
}return result;
}
double getPerimetro(){
 double perimetro=0;
  if(_eTriangulo()==true){
    
  perimetro = this._lado1.toDouble()+this._lado2.toDouble()
    +this._lado3.toDouble();
    
    
}
  return perimetro;
}
  bool equals(Triangulo tri){
    int cont=0;
    if(_eTriangulo()==true){    
      if(tri._lado1==this._lado1&& tri._lado2 == this._lado2 && tri._lado3==this._lado3
         ||tri._lado1==this._lado1&& tri._lado2 == this._lado3 && tri._lado3==this._lado2 
         ||tri._lado1==this._lado2&& tri._lado2 == this._lado3 && tri._lado3==this._lado1
         ||tri._lado1==this._lado2&& tri._lado2 == this._lado1 && tri._lado3==this._lado3 
         ||tri._lado1==this._lado3&& tri._lado2 == this._lado2 && tri._lado3==this._lado1
         ||tri._lado1==this._lado3&& tri._lado2 == this._lado1 && tri._lado3==this._lado2 ){
        
        return true;
      }
  }
  return false;
 } 
  
 String toString(){
   return "Lado1 = "+_lado1.toString()+"\nLado2 = "+_lado2.toString()+ "\nLado3 = "+_lado3.toString()+ "\n" +super.toString();
}
}
void main() {
Quadrado q1 = new Quadrado(4,5);
Quadrado q2 = new Quadrado(4,5);
Triangulo t1= new Triangulo(3,4,5,3);
Triangulo t2= new Triangulo(3,7,5,4);
Triangulo t3= new Triangulo(3,6,8,7);

print("Numero de Poligonos : " + Poligono._nroPoligonos.toString());

print("Os Quadrados são iguais? "+q1.equals(q2).toString());
print(q1.toString());
print("----------------------------------------------------------------");
print("Os Quadrados são iguais? "+q2.equals(q1).toString());
print(q2.toString());
print("----------------------------------------------------------------");
print("O objeto é um triangulo? " + t1._eTriangulo().toString());
print(t1.toString());
print("----------------------------------------------------------------");
print("O objeto é um triangulo? " + t2._eTriangulo().toString());
print(t2.toString());
print("----------------------------------------------------------------");
print("O objeto é um triangulo? " + t3._eTriangulo().toString());
print(t3.toString());
}
  