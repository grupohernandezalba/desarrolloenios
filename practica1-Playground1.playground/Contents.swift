import UIKit


// Strings, asignación implícita
var cadena = "Hola mundo"
    cadena = "Marco Hernández"

//Asignación explícita
var apellido:String = "Hola mundo"

// Constant
let correo = "marco@grupohernandezalba.com"
    //correo = "info@grupohernandezalba.com"

// Integer : Int
var entero = 1

var a:Int = 10
var b:Int = 20

//Operadores aritmeticos básicos

var suma:Int = a + b
var resta:Int = a - b
var multiplicacion:Int = a * b

var pi:Double = 3.1416
var x:Double = 10
var y:Double = 10
var division:Double = x / y
var radio:Double = 1.5
var area: Double = pi * (radio * radio)

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮🐮 = "dogcowcow"


// Double Float
var flotante = 1.5

//Imprimiendo variables y constantes

print(area)

// Imprimiendo variables

print("El valor del área es: \(area)")

// Punto y coma

var i:Int = 0; var j:Int = 0


// Tipo entero sin signo
let minValue = UInt8.min  //  minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  //  maxValue is equal to 255, and is of type UInt8
var valor:UInt8 = 2

// Literales numericas

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

// Con el guión se mejora la legibilidad del número
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

//Conversiones
let valordepi = 3.1416
let integerPi = Int(valordepi)
print(integerPi)

// Type Aliases
  
typealias AudioSample = UInt16
var maxAmplitudeFound:AudioSample = AudioSample.max
print(maxAmplitudeFound)



//Booleans

let casado = false

if casado {
    print("Eres una persona feliz")
} else {
    print("Eres una persona MUY feliz")
}
    

//let k = 1
//if k {
//     print("error, ya que no es boolean")
//}

// Tuples o tuplas en español?

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("Código: \(statusCode)")
print("Estatus: \(statusMessage)")
let mitupla = (1,2,3)


// Optionals o variables opcionales


