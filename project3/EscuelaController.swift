//
//  ViewController.swift
//  project3
//
//  Created by Alumno on 10/31/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class EscuelaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var modelos : [Modelo] = []
    var docentes:  [Docente] = []
    var contactos: [Contactos] = []
    var fechas : [Fecha] = []
    var capitulos: [Capitulo] = []
    var descripciones: [Descripcion] = []
    var animes: [Anime] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        modelos.append(Modelo(segue: "anime", menu: "Naruto Shippuden", imagen: "descarga"))
        modelos.append(Modelo(segue: "anime", menu: "Boku no Hero Academy", imagen: "Kimetsu"))
        modelos.append(Modelo(segue: "anime", menu: "Kimetsu no Yaiba", imagen: "Kimetsu"))
        modelos.append(Modelo(segue: "anime", menu: "Sword art online", imagen: "Kimetsu"))
        modelos.append(Modelo(segue: "anime", menu: "Assesination Classroom", imagen: "Kimetsu"))
        
        animes[0].descripciones.append(Descripcion(descripcion: "Yuji Itadori decide pasar el tiempo con el Club de Ocultismo del instituto, pese a poseer unas habilidades atléticas extraordinarias. Con el tiempo, descubre que el mundo del oculto es real, y los miembros del club son atacados. Mientras, el misterioso Megumi Fushiguro está buscando un objeto maldito, y su búsqueda le lleva hasta Itadori…."))
         
        animes[0].capitulos.append(Capitulo(imagen: "", episodio: "Temporada: 1", duracion: "Episodios: 24"))
        
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
        //Se ejectua cuando se selecciona una celda del TableView
        performSegue(withIdentifier: modelos[indexPath.row].segue, sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "anime" {
        let destino = segue.destination as! HorarioAsistenciaController
        }
        if segue.identifier == "docente" {
            let destino = segue.destination as! DocenteController
            destino.docentes = docentes
        }
        if segue.identifier == "pagos" {
            let destino = segue.destination as! CalendarioPagosController
            destino.fechas = fechas
        }
        if segue.identifier == "contactoemergencia" {
            let destino = segue.destination as! ContactoEmergenciaController
            destino.contactos = contactos
        }
    }
}

