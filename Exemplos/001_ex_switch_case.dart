void main(){
  String status = '00';
  switch (status) {
    case '01':
    print ('O seu pedido está aberto!');
    break;
    case '02':
    print ('O seu pedido está fechado!');
    break;
    case '03':
    print ('O seu pedido está pendente!');
    break;
    case '04':
    print ('O seu pedido está encerrado!');
    break;
    default:{
      print ('Status não verificado!');
    }
  }
}