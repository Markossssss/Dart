void main() {
 double preco = 10;
 double porcentagem = 10;
 String desconto = 'Ultra';
  if (desconto == 'Simples'){
    porcentagem = 10;
  }
  else if (desconto == 'Master'){
    porcentagem = 25;
    }
  else {
    porcentagem = 50;
  }
 
  switch (desconto) {
    case 'Simples':
      preco = preco - ((preco/100)*porcentagem);
      print ('O modelo é $desconto! O valor do desconto será de $porcentagem%. O preço final será de R\$ $preco.');
      break;
    case 'Master':
      preco = preco - ((preco/100)*porcentagem);
      print ('O modelo é $desconto! O valor do desconto será de $porcentagem%. O preço final será de R\$ $preco.');
      break;
    case 'Ultra' :
      preco = preco - ((preco/100)*porcentagem);
      print ('O modelo é $desconto! O valor do desconto será de $porcentagem%. O preço final será de R\$ $preco.');
      break;
    default:
      print ('Valor não compreendido.');
  }
}