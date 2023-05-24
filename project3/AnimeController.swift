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
    var animes: [Anime] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animes.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let celda = tableView.dequeueReusableCell(withIdentifier: "anime") as? CeldaAnime2Controller {
            celda.lblDescripcion.text = animes[indexPath.row].descripcion
            celda.lblTemporadas.text = animes[indexPath.row].temporada
            celda.lblCapitulos.text = animes[indexPath.row].capitulo
            return celda
        } else {
            // En caso de que no se pueda obtener la celda correctamente, se devuelve una celda genérica
            return UITableViewCell()
        }
    }
    
}
