//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  var dueda = 0
  var dinero = 0
  
  method sueldo() = sueldo
  
  method sueldo(_sueldo) {
    sueldo = (sueldo + _sueldo) - dueda
    dueda -= sueldo
  }

  method cobrarSueldo() {
    //no hace nada
    //queda el metodo vacio para que no se rompa el polimorfismo
  }

  method dueda() {
    return dueda
  }

  method dinero() {
    return dinero
  }
  
  method gastar(cuanto) {
    if (dinero < cuanto){
      dueda += (dinero - cuanto).abs()
    }
    else 
  }
}



object baigorria {
  var precioEmpanada = 15
  var totalCobrado = 0
  var cantidadDeEmpanadasVendidas = 0
  
  method precioEmpanada(_precioEmpanada) {   //setter
    precioEmpanada = _precioEmpanada
  }
  
  method venderEmpanada(cantidad) {
    cantidadDeEmpanadasVendidas += cantidad
  }
  
  method sueldo() = cantidadDeEmpanadasVendidas * precioEmpanada
  
  method totalCobrado() = totalCobrado

  method cobrarSueldo() {
    totalCobrado = self.sueldo()
    cantidadDeEmpanadasVendidas = 0
  }
}

object gimenez {
  var fondo = 300000
  
  method foondo() = fondo
  
  method pagarA(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarSueldo()
  }
}








