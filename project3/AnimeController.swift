//
//  AnimeController.swift
//  project3
//
//  Created by Alumno ULSA on 23/05/23.
//  Copyright © 2023 Alumno. All rights reserved.
//

import Foundation
import UIKit
class AnimeController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var TvCapitulos: UITableViewCell!
    @IBOutlet weak var TvDescripcion: UITableViewCell!
    @IBOutlet weak var TvImagen: UITableViewCell!
    var capitulos: [Capitulo] = []
    var descripciones: [Descripcion] = []
    var animes: [Anime] = []
    var imagenes: [Imagen] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return capitulos.count; descripciones.count; imagenes.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda2 = tableView.dequeueReusableCell(withIdentifier: "anime") as! CeldaAnime2Controller
        celda2.episodio.text = capitulos[indexPath.row].episodio
        celda2.duracion.text = capitulos[indexPath.row].duracion
        let celda3 = tableView.dequeueReusableCell(withIdentifier: "anime") as! CeldaAnime3Controller
        celda3.descripcion.text = descripciones[indexPath.row].descripcion
        return celda2
    }
    
    
}
