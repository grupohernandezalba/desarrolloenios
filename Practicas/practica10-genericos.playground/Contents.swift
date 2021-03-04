import UIKit

var texto:String = "Hello world!"
//texto = 5


func suma(a: Int, b: Int) -> Int
{
    return a + b
}

let resultado = suma(a: 42, b: 99)
print(resultado)


func suma2(a: Double, b: Double) -> Double
{
    return a + b
}

let resultado2 = suma2(a: 42.5, b: 99.3)
print(resultado2)

//Principio DRY

func sumaGenerica<T: Numeric>(a: T, b: T) -> T
{
    return a + b
}

print(sumaGenerica(a:42,b:99))
print(sumaGenerica(a:42.5,b:99.3))
print(sumaGenerica(a: Double.pi, b: Double.pi))

var dato = sumaGenerica(a:42,b:99)
print("Dato \(dato)")

//Generic Type Constraints
//Equatable
let arregloNombres = ["Hugo", "Paco", "Luis"]

for (index, nombre) in arregloNombres.enumerated() {
    print("\(index): '\(nombre)'")
}


func obtienePosicion<T:Equatable>(abuscar: T, nombres: [T]) -> Int?
{
    for (index, nombre) in nombres.enumerated()
    {
        if nombre == abuscar {
            return index
        }
    }

    return nil
}

//let encontrado = obtienePosicion(abuscar: "Luisa", nombres: arregloNombres)
let encontrado = obtienePosicion(abuscar: "Luis", nombres: arregloNombres)

if encontrado != nil {
    print("Se encontró en la posición: ")
    print(encontrado!)
}
else
{
    print("No se encontró.")
}

//Extensión de estructruras
struct Point {
    let x: Int, y: Int
}

let p = Point(x: 21, y: 30)
print(p)

extension Point {
    var descripcion: String {
        return "\(x), \(y)"
    }
}

var x = p.descripcion
print(x)

 
//Overriding methods

class Perro {
    var raza:String = ""
    
    func haceRuido() {
        print("Woof!")
    }
}

class Cachorro: Perro {
    
    override func haceRuido() {
        print("Yip!")
    }
    
}

let mascota:Cachorro = Cachorro()
mascota.raza = "Pastor Alemán"

mascota.haceRuido()



//final class Paciente {
class Paciente {
    var nombre : String
    var padecimiento : String
    
    init(nombre: String, padecimiento: String) {
        self.nombre = nombre
        self.padecimiento = padecimiento
    }
    
}

class EnfermoGrave: Paciente {
    var nivelDolor: Int
    
    init(nombre: String, padecimiento: String , nivelDolor: Int) {
        self.nivelDolor = nivelDolor
        super.init(nombre: nombre, padecimiento: padecimiento)
        //self.nivelDolor = nivelDolor
    }
}

let objetoEnfermo:EnfermoGrave = EnfermoGrave(nombre:"Juan", padecimiento: "Diabetes", nivelDolor: 3)

print("\(objetoEnfermo.nombre) \(objetoEnfermo.nivelDolor)")


//Copia de objetos
//struct Cantante {
class Cantante {
    var nombre = "Carlos Rivera"
}

var objetoCantante:Cantante = Cantante()
print(objetoCantante.nombre)

var objetoCantante2 = objetoCantante
print(objetoCantante2.nombre)

objetoCantante2.nombre = "Christian Nodal"

print(objetoCantante.nombre)

