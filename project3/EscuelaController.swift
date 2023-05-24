//
//  ViewController.swift
//  project3
//
//  Created by Alumno on 10/31/22.
//  Copyright © 2022 Alumno. All rights reserved.
//
import UIKit

class EscuelaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var modelos: [Modelo] = []
    var animes: [Anime] = []
    
    @IBOutlet weak var TvInicio: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        modelos.append(Modelo(segue: "anime", menu: "Evangelion", imagen: "", imageURL: URL(string: "https://static.wikia.nocookie.net/doblaje/images/a/a6/Neon_Genesis_Evangelion_-_Poster.jpg/revision/latest?cb=20220519030722&path-prefix=es")))

        modelos.append(Modelo(segue: "anime", menu: "Dragon Ball Z", imagen: "", imageURL: URL(string: "https://static.wikia.nocookie.net/doblaje/images/7/7c/Dragon-Ball-Z.png/revision/latest?cb=20200911193425&path-prefix=es")))
        modelos.append(Modelo(segue: "anime", menu: "Death Note", imagen: "", imageURL: URL(string: "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg")))
        modelos.append(Modelo(segue: "anime", menu: "Chainsaw man", imagen: "", imageURL: URL(string: "https://static.wikia.nocookie.net/chainsaw-man/images/3/3a/Volumen_1.png/revision/latest?cb=20220922005416&path-prefix=es")))
        modelos.append(Modelo(segue: "anime", menu: "Boku no Hero Academia", imagen: "", imageURL: URL(string: "https://static.wikia.nocookie.net/doblaje/images/5/5d/MHA_Temporada_6.jpg/revision/latest?cb=20230118041958&path-prefix=es")))
        modelos.append(Modelo(segue: "anime", menu: "Kimetsu no Yaiba", imagen: "", imageURL: URL(string: "https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/2/2b/Kimetsu_no_Yaiba_Key_Visual_3.png/revision/latest?cb=20190319204656")))
        modelos.append(Modelo(segue: "anime", menu: "Berserk", imagen: "", imageURL: URL(string: "https://m.media-amazon.com/images/I/81+xh1mRSTL.jpg")))
        modelos.append(Modelo(segue: "anime", menu: "Fullmetal Alchemist: Brotherhood", imagen: "", imageURL: URL(string: "https://cdn.myanimelist.net/images/anime/2/17472l.jpg")))
        modelos[0].animes.append(Anime(descripcion: "Evangelion es un anime de ciencia ficción y mecha que sigue la historia de un grupo de adolescentes pilotos de robots gigantes llamados EVA que defienden a la humanidad de criaturas misteriosas conocidas como Ángeles. A medida que la trama se desarrolla, se exploran temas profundos como la identidad, la soledad y la naturaleza de la existencia humana. Con su narrativa compleja y personajes memorables, Evangelion ha dejado una huella duradera en la industria del anime.", capitulo: "25 episodios", temporada: "1 temporada", imagenP: "", imagenC: "", titulo: "Evangelion", imageURL: URL(string: "https://static.wikia.nocookie.net/doblaje/images/a/a6/Neon_Genesis_Evangelion_-_Poster.jpg/revision/latest?cb=20220519030722&path-prefix=es")))

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenu") as! CeldaMenuController
        celda.lblMenu.text = modelos[indexPath.row].menu
        //celda.lblImagen.image = UIImage(named:modelos[indexPath.row].imagen)
        
        if let imageURL = modelos[indexPath.row].imageURL {
            URLSession.shared.dataTask(with: imageURL) { data, response, error in
                if let data = data {
                    DispatchQueue.main.async {
                        celda.lblImagen.image = UIImage(data: data)
                    }
                }
            }.resume()
        }
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Se ejecuta cuando se selecciona una celda del TableView
        performSegue(withIdentifier: modelos[indexPath.row].segue, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "anime" {
            if let indexPath = TvInicio.indexPathForSelectedRow {
                let destino = segue.destination as! AnimeController
                destino.animes = modelos[indexPath.row].animes
                destino.selectedTitle = modelos[indexPath.row].menu            }
        }
    }
}
