//
//  Medicamento.swift
//  jsonFarmacia
//
//  Created by Marco Antonio Hernández Alba on 12/04/21.
//

import Foundation

struct Medicamento: Decodable {
    var nombre: String
    var foto: String
    var dosis: String
    var sustancia: String
}
