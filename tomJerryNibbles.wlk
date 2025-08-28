object tom {
    var energia = 50

    method velocidadMaxima() {
        return 5 + energia/10
    }

    method comer(unRaton) {
        energia = 1000.min(energia + 12 + unRaton.peso())
        unRaton.serComido()
    }

    method correr(distancia) {
        energia = (energia - distancia/2).max(0)
    }

      method energia() {return energia}

      method puedeCazar(unaDistancia) {
        return unaDistancia/2 <= energia
      }

      method cazarRaton_ADistancia_(unRaton,unaDistancia) {
        if (self.puedeCazar(unaDistancia)) {

        self.correr(unaDistancia)
        self.comer(unRaton)

        }
      }
}

object jerry {
  var edad = 2
  method cumplirAno() {
    edad = edad + 1
  }
  method peso() {
    return edad * 20
  }
  method serComido() {  }
}

object nibbles {
  method peso() {
    return 35
  }
  method serComido() {  }
}


object bizcocho {
 var estaSeco = true

 method peso() {
    if (estaSeco) {return 20}
    else {return 30}
 }

 method serComido() {
    estaSeco = false
 }
}
