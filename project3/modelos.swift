//
//  modelo.swift
//  project3
//
//  Created by Alumno ULSA on 02/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
class Modelo {
    var segue: String
    var menu: String
    var imagen: String
    var animes : [Anime] = []
    init(segue: String, menu: String, imagen: String) {
        self.segue = segue
        self.menu = menu
        self.imagen = imagen
    }
    
}
