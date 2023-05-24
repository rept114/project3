//
//  Animes.swift
//  project3
//
//  Created by Alumno ULSA on 23/05/23.
//  Copyright © 2023 Alumno. All rights reserved.
//

import Foundation
class Anime {
    var descripcion: String
    var capitulo: String
    var temporada: String
    var imagenP: String
    var imagenC: String
    var titulo: String
    let imageURL: URL? // Agrega esta propiedad para almacenar la URL de la imagen
    init(descripcion: String, capitulo: String, temporada:String, imagenP:String, imagenC:String, titulo: String, imageURL: URL?) {
        self.descripcion = descripcion
        self.capitulo = capitulo
        self.imagenC = imagenC
        self.imagenP = imagenP
        self.temporada = temporada
        self.titulo = titulo
        self.imageURL = imageURL
    }
}
