//
//  HorarioAsistenciaController.swift
//  project3
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation

import UIKit

class HorarioAsistenciaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var dias : [Dia] = []
    var asistencias: [Asistencia] = []
    @IBOutlet weak var TvHoraAsistencia: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dias.append(Dia(dia: "Lunes"))
        dias.append(Dia(dia: "Martes"))
        dias.append(Dia(dia: "Miercoles"))
        dias.append(Dia(dia: "Jueves"))
        dias.append(Dia(dia: "Viernes"))
        dias.append(Dia(dia: "Sabado"))
        dias.append(Dia(dia: "Domingo"))

            asistencias.append(Asistencia(clase: "Programación", salon: "D5", hora: "7:00 am"))
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dias.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaDia") as! CeldaHorarioAsistenciaController
        celda.lblDia.text = dias[indexPath.row].dia
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! AsistenciaController
        destino.asistencias = asistencias
    }
}

