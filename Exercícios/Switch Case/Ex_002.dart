void main() {
 double preco = 10;
 double porcentagem = 10;
 bool desconto = true;
 
 switch (desconto) {
   case false:
     print ('O valor do produto será $preco.');
     break;
   case true:
     preco = preco - ((preco/100)*porcentagem);
     print ('O valor do desconto será de $porcentagem%. O preço final será de R\$ $preco.');
     break;
   default:
     print ('Valor não compreendido.');
 }
}