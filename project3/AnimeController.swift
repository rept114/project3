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
    @IBOutlet weak var TvAnimes: UITableView!
    
    var capitulos: [Capitulo] = []
    var descripciones: [Descripcion] = []
    var animes: [Anime] = []
    var imagenes: [Imagen] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Registrar los identificadores de celda
        TvAnimes.register(UINib(nibName: "CeldaAnime2Controller", bundle: nil), forCellReuseIdentifier: "anime2")
        TvAnimes.register(UINib(nibName: "CeldaAnime3Controller", bundle: nil), forCellReuseIdentifier: "anime3")
        
        // Configurar la UITableView
        TvAnimes.dataSource = self
        TvAnimes.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return capitulos.count + descripciones.count + imagenes.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let celda2 = tableView.dequeueReusableCell(withIdentifier: "anime2", for: indexPath) as! CeldaAnime2Controller
            
            // Verificar si existe el capítulo correspondiente antes de acceder a él
            if indexPath.row / 2 < capitulos.count {
                celda2.episodio.text = capitulos[indexPath.row / 2].episodio
                celda2.duracion.text = capitulos[indexPath.row / 2].duracion
            }
            
            return celda2
        } else {
            let celda3 = tableView.dequeueReusableCell(withIdentifier: "anime3", for: indexPath) as! CeldaAnime3Controller
            
            // Verificar si existe la descripción correspondiente antes de acceder a ella
            if indexPath.row / 2 < descripciones.count {
                celda3.descripcion.text = descripciones[indexPath.row / 2].descripcion
            }
            
            return celda3
        }
    }

}
