//
//  AsistenciaController.swift
//  project3
//
//  Created by Alumno ULSA on 07/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AsistenciaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var asistencias: [Asistencia] = []
    @IBOutlet weak var TvAsistencia: UITableView!
    //var TrueAsistenciaController : Bool
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return asistencias.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "asistencia") as! CeldaAsistenciaController
        celda.lblClase.text = asistencias[indexPath.row].clase
        celda.lblSalon.text = asistencias[indexPath.row].salon
        celda.lblHora.text = asistencias[indexPath.row].hora
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ClaseAsistenciaController
        destino.callbackActualizar = asistenciachecada
        destino.asistencia = asistencias[TvAsistencia.indexPathForSelectedRow!.row]
    }
    func asistenciachecada() {
        TvAsistencia.reloadData()
    }

    
}
