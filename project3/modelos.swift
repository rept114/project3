//
//  modelo.swift
//  project3
//
//  Created by Alumno ULSA on 02/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
class Modelo {
    var mes: String
    var segue: String
    var clase: String
    var salon: String
    var hora: String
    var materia: String
    var menu: String
    
    init(mes: String, segue: String, clase: String, salon: String, hora: String, materia: String, menu: String) {
        self.mes = mes
        self.segue = segue
        self.clase = clase
        self.salon = salon
        self.hora = hora
        self.materia = materia
        self.menu = menu
    }
    
}
