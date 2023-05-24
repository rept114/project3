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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let celda = tableView.dequeueReusableCell(withIdentifier: "anime") as? CeldaAnime2Controller {
            celda.lblDescripcion.text = animes[indexPath.row].descripcion
            celda.lblTemporadas.text = animes[indexPath.row].temporada
            celda.lblCapitulos.text = animes[indexPath.row].capitulo
            //celda.lblImagenP.image = UIImage(named:animes[indexPath.row].imagenP)
            //celda.lblImagenC.image = UIImage(named:animes[indexPath.row].imagenC)
            
            if let imageURL = animes[indexPath.row].imageURL {
                URLSession.shared.dataTask(with: imageURL) { data, response, error in
                    if let data = data {
                        DispatchQueue.main.async {
                            celda.lblImagenP.image = UIImage(data: data)
                            celda.lblImagenC.image = UIImage(data: data)
                        }
                    }
                }.resume()
            }
            
            return celda
        } else {
            // En caso de que no se pueda obtener la celda correctamente, se devuelve una celda genérica
            return UITableViewCell()
        }
    }
    
    @IBOutlet weak var TvAnimes: UITableView!
    var animes: [Anime] = []
    var selectedTitle: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Verificar si hay al menos un anime en la lista
        if let firstAnime = animes.first {
            // Establecer el título del elemento de navegación con el título del primer anime
            self.title = firstAnime.titulo
        }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedTitle = animes[indexPath.row].titulo
        
        // Realiza la navegación o cualquier otra acción aquí
    }

    
}
}
