//Escribir aqui los objetos

object galvan {
  var dinero = 0
  var dueda = 0
  method dinero() {
    return dinero
  }
  method sueldo(sueldo) {
    dinero = dinero + sueldo - dueda
    dueda = dueda - dinero
  }
  method gastar(cuanto) {
    dueda = dueda + cuanto
  }
}


object baigorria {
    var sueldoDisponible = 0
    var cantidadDeEmpanadas = 0
    method cantidadDeEmpanadas(cantidad) {
      cantidadDeEmpanadas = cantidad
    }
    method sueldoDisponible() {
      return sueldoDisponible
    }
    method totalCobrado() {
      sueldoDisponible = sueldoDisponible + 15 * cantidad
      cantidadDeEmpanadas = 0
    }
}

object gimenez {
  var fondoParaSueldos = 300000
  method galvan(sueldo) {
    galvan.sueldo(sueldo)
    fondoParaSueldos = fondoParaSueldos - sueldo
  }
  method baigorria(cantidad) {
    baigorria.cantidadDeEmpanadas(cantidad)
    fondoParaSueldos = fondoParaSueldos - 15 * cantidad
  }
}


















