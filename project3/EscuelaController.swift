//
//  ViewController.swift
//  project3
//
//  Created by Alumno on 10/31/22.
//  Copyright © 2022 Alumno. All rights reserved.
//
import UIKit
import CoreData

class EscuelaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var modelos: [Modelo] = []
    var animes: [Anime] = []
    
    @IBOutlet weak var TvInicio: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cargar datos desde la base de datos
        cargarDatosDesdeBaseDeDatos()
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
        celda.lblImagen.image = UIImage(named: modelos[indexPath.row].imagen)
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
                destino.selectedTitle = modelos[indexPath.row].menu
            }
        }
    }
    
    // Función para cargar datos desde la base de datos
    func cargarDatosDesdeBaseDeDatos() {
        let context = DataBaseConnection.shared.viewContext
        
        // Consulta para obtener los datos de los modelos
        let fetchRequestModelos: NSFetchRequest<ModeloEntity> = ModeloEntity.fetchRequest()
        
        do {
            let modelosEntities = try context.fetch(fetchRequestModelos)
            for modeloEntity in modelosEntities {
                let segue = "anime"
                let menu = modeloEntity.menu ?? ""
                let imagen = modeloEntity.imagen ?? ""
                
                let modelo = Modelo(segue: segue, menu: menu, imagen: imagen)
                modelos.append(modelo)
            }
        } catch {
            print("Error al ejecutar la consulta de modelos: \(error)")
            return
        }
        
        // Consulta para obtener los datos de los animes
        let fetchRequestAnimes: NSFetchRequest<AnimeEntity> = AnimeEntity.fetchRequest()
        
        do {
            let animesEntities = try context.fetch(fetchRequestAnimes)
            for animeEntity in animesEntities {
                let titulo = animeEntity.titulo ?? ""
                let descripcion = animeEntity.descripcion ?? ""
                let capitulo = animeEntity.capitulo ?? ""
                let temporada = animeEntity.temporada ?? ""
                let imagenP = animeEntity.imagenP ?? ""
                let imagenC = animeEntity.imagenC ?? ""
                
                let anime = Anime(descripcion: descripcion, capitulo: capitulo, temporada: temporada, imagenP: imagenP, imagenC: imagenC, titulo: titulo)
                animes.append(anime)
            }
        } catch {
            print("Error al ejecutar la consulta de animes: \(error)")
            return
        }
        
        // Agregar los animes cargados al primer modelo (puedes ajustar esto según tus necesidades)
        if !animes.isEmpty {
            modelos[0].animes = animes
        }
    }
}
