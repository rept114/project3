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
        
        // Do any additional setup after loading the view, typically from a nib.
        
        modelos.append(Modelo(segue: "anime", menu: "Naruto Shippuden", imagen: "descarga"))
        modelos.append(Modelo(segue: "anime", menu: "Boku no Hero Academy", imagen: "Kimetsu"))
        modelos.append(Modelo(segue: "anime", menu: "Kimetsu no Yaiba", imagen: "Kimetsu"))
        modelos.append(Modelo(segue: "anime", menu: "Sword art online", imagen: "Kimetsu"))
        modelos.append(Modelo(segue: "anime", menu: "Assesination Classroom", imagen: "Kimetsu"))
        modelos[0].animes.append(Anime(descripcion: "Naruto, un aprendiz de ninja de la Aldea Oculta de Konoha es un chico travieso que desea llegar a ser el Hokage de la aldea para demostrar a todos lo que vale. Lo que descubre al inicio de la historia es que la gente le mira con desconfianza porque en su interior está encerrado el demonio Kyubi que una vez destruyó la aldea, y que el anterior líder de la misma tuvo que encerrar en su cuerpo siendo aún muy pequeño, a coste de su vida. Aunque sus compañeros no saben esto, tampoco le aprecian porque es mal estudiante y siempre está haciendo bromas. Sin embargo, la forma de actuar y la determinación de Naruto demuestran a los demás que puede llegar muy lejos, y el recelo de los otros chicos se va disipando. Naruto y sus compañeros Sakura y Sasuke, junto a su maestro Kakashi tendrán que enfrentarse a una serie de combates y misiones a lo largo de la historia que les permitirán mejorar y crecer. Naruto se vera enfrentado a sus principales enemigos Akatsuki, Itachi y Kisame.", capitulo: "220 episodios", temporada: "6 temporadas", imagenP: "", imagenC: ""))

        
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
            }
        }
    }
}
