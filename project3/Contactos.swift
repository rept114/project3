//
//  Contactos.swift
//  project3
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Contactos {
    var nombre : String
    var TCasa : String
    var TPersonal: String
    var parentesco: String
    init(nombre: String, TCasa: String, TPersonal: String, parentesco: String) {
        self.nombre = nombre
        self.TCasa = TCasa
        self.TPersonal = TPersonal
        self.parentesco = parentesco
    }
}
