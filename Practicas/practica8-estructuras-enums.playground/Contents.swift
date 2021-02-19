import UIKit


// Manejo de Strings , extras

let cadenaComillas = "He said, \"Hi there!\" as he passed by."

let cadenaSalto = "Roses are red.\nViolets are blue."


// Funciones

func saluda(_ name: String) {
    print("Hola " + name)
}
saluda("Messi")


//Un poco mas de arreglos

var titulosStarWars = [String]()
titulosStarWars.append("Una nueva esperanza")

titulosStarWars.insert("El imperio contraataca", at: 1)
print(titulosStarWars)
titulosStarWars += ["3", "4", "5"]
print(titulosStarWars)
//titulosStarWars.remove(at: 5)
titulosStarWars.remove(at: 4)
print(titulosStarWars)
titulosStarWars.removeFirst()
print(titulosStarWars)
titulosStarWars.removeLast()
print(titulosStarWars)

titulosStarWars.removeAll()
print("Arreglo: \(titulosStarWars)")


//Estructuras

struct Canciones {
    let titulo: String
    let artista: String
    let duracion: Int
    /*
    var duracionMinutos: String {
        let minutos = duracion / 60
        let segundos = duracion % 60
        return "\(minutos)m \(segundos)s"
    }
    */
}

let cancion = Canciones(titulo: "El Noa noa", artista: "Juan Gabriel", duracion: 150)

print(cancion.titulo)
print(cancion.artista)
print(cancion.duracion)
//print(cancion.duracionMinutos)

/*
let cancion2 = Canciones(titulo: "El triste", artista: "José José", duracion: 180)

print(cancion2.titulo)
print(cancion2.artista)
print(cancion2.duracion)
print(cancion2.duracionMinutos)
*/

//ENUMERABLES


enum desayuno {
    case huevos
    case chilaquiles
    case quesadillas
    //case 123
    func postre(_ decision: Bool) -> String {
        if(decision)
        {
            return "Si"
        }
        else
        {
            return "No"
        }
            
    }
}

/*
 enum desayuno {
     case huevos, chilaquiles, quesadillas
 }
*/

//desayuno.huevos = "Revueltos"

let eleccion = desayuno.huevos

print(eleccion)

print(eleccion.postre(true))
