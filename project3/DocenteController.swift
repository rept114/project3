//
//  DocenteController.swift
//  project3
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit


class DocenteController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return docentes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaDocente") as! CeldaDocenteController
        celda.lblDocente.text = docentes[indexPath.row].docente
        celda.lblMateria.text = docentes[indexPath.row].Materia
        return celda
    }
    

 
    @IBOutlet weak var TvDocente: UITableView!
    var docentes: [Docente] = []
    var evaluado : String = "0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //@IBAction func doTapNuevoC(_ sender: Any) {
        //performSegue(withIdentifier: "nuevocontacto", sender: self)
    //}
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "evaluaciondocente" {
        let destino = segue.destination as! EvaluacionDocenteController
            destino.evaluacion = evaluado
            destino.callbackActualizar = evaluacionchecada
        
        
        }
    }
    func evaluacionchecada(docentes:Docente) {
        TvDocente.reloadData()
    }

        }

    


