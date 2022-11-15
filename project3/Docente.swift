//
//  Docente.swift
//  project3
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
class Docente {
    var Materia: String
    var docente: String
    var calificacion: String
    var comentario: String
    var evaluacion: Bool
    init(Materia: String, docente: String, calificacion: String, comentario: String, evaluacion: Bool) {
        self.Materia = Materia
        self.docente = docente
        self.calificacion = calificacion
        self.comentario = comentario
        self.evaluacion = evaluacion
    }
}
