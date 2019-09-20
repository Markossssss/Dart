void main(){
  String idade = 'menor';
  switch (idade){
    case 'maior':
    print ('pode ter cartão de cŕedito.');
    break;
    case 'menor':
    print ('não pode ter cartão de crédito.');
    break;
    default:{
      print ('erro');
    }
  }
}