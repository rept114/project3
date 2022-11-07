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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        modelos.append(Modelo(segue: "horarioasistencia", menu: "Horario y Asistencia"))
        modelos.append(Modelo(segue: "docente", menu: "Evaluación Docente"))
        modelos.append(Modelo(segue: "pagos", menu: "Calendario de Pagos"))
        modelos.append(Modelo(segue: "contactoemergencia", menu: "Contacto de Emergencia"))
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
        if segue.identifier == "horarioasistencia" {
        let destino = segue.destination as! HorarioAsistenciaController
        }
        if segue.identifier == "docente" {
            let destino = segue.destination as! DocenteController
        }
        if segue.identifier == "pagos" {
            let destino = segue.destination as! CalendarioPagosController
        }
        if segue.identifier == "contactoemergencia" {
            let destino = segue.destination as! ContactoEmergenciaController
        }
    }
}

