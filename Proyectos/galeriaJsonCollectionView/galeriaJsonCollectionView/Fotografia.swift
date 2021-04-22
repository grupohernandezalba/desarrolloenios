//
//  Fotografia.swift
//  galeriaJsonCollectionView
//
//  Created by Marco Antonio Hernández Alba on 20/04/21.
//

import Foundation

struct Fotografia:Decodable {
    var id:String
    var urls: [String:String]
}
