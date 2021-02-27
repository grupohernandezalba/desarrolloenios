import UIKit


//Variables Globales y Locales

var variableGlobal:Int =  50

func evaluar() {
    var variableLocal:String
    variableLocal = "Este es un texto de ejemplo"
    print("Global: \(variableGlobal), Local:\(variableLocal)")
}
  
print(variableGlobal)

class Heroe {
    var nombre:String = ""
    var edad:Int = 21
    var tipo = superPoder()
    
    func saludo() -> String {
        return "Soy un Super Heroe mi nombre es \(nombre)"
    }
    
    func muestraPoder() -> String {
        return "Soy \(nombre) y yo puedo \(tipo.accion)"
    }
}


class superPoder {
    var accion:String = ""
}


var objetoHeroe:Heroe = Heroe()

objetoHeroe.nombre = "Thor"

print(objetoHeroe.nombre)

print(objetoHeroe.saludo())


objetoHeroe.tipo.accion = "Volar"

print(objetoHeroe.muestraPoder())



//Guard

let esMujer = false

func revisaGenero() {
    guard esMujer else {
        print("Género: Hombre")
        return
    }
}

revisaGenero()


//Herencia


class Persona {
    var nombre:String = ""
    var apellido:String = ""
    var curp:String = ""
    
    func muestraCurp() ->String {
        return "Curp: \(curp)"
    }
    
}

var objetoPersona:Persona = Persona()

objetoPersona.nombre = "Juan Pérez"
objetoPersona.apellido = "Juan Pérez"
objetoPersona.curp = "jupe6745382"

print(objetoPersona.muestraCurp())


//class Empleado:Persona {
class Empleado:Persona {
    
    //var numeroEmpleado:Int = 0
    //var puesto:String = ""
    
    var numeroEmpleado:Int
    var puesto:String
    
    init(numeroEmpleado:Int, puesto:String) {
        self.numeroEmpleado = numeroEmpleado
        self.puesto = puesto
    }
    
    func datosEmpleado() -> String {
        
        var datos:String
        datos = "Número de empleado: " + String(numeroEmpleado) + "\n"
        //datos += "Nombre completo: " + nombre + " " + apellido  + "\n"
        datos += "Puesto: " + puesto
        
        return datos
        
    }
    
}

//var objetoEmpleado:Empleado = Empleado()
var objetoEmpleado:Empleado = Empleado(numeroEmpleado:1, puesto: "Director General")

//objetoEmpleado.numeroEmpleado = 1
//objetoEmpleado.puesto = "Director general"

//objetoEmpleado.nombre = "Hugo"
//objetoEmpleado.apellido = "Sánchez"
//objetoEmpleado.curp = "husa547683"

print(objetoEmpleado.datosEmpleado())

//print(objetoEmpleado.muestraCurp())

