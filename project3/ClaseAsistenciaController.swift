//
//  ClaseAsistenciaController.swift
//  project3
//
//  Created by Alumno ULSA on 16/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ClaseAsistenciaController: UIViewController {
    var asistencia: Asistencia?
    //var TrueAsistenciaController : Bool
    
    @IBOutlet weak var Imagen: UIImageView!
    @IBOutlet weak var lblHoraClase: UILabel!
    @IBOutlet weak var lblSalon: UILabel!
    @IBOutlet weak var lblClase: UILabel!
    @IBOutlet weak var lblAsistenciaController: UILabel!
    @IBOutlet weak var lblHoraAsistencia: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fecha = Date()
        let calendario = Calendar.current
        let minutos = Int(calendario.component(.minute, from: fecha))
        var minutosTexto = ""
        if minutos < 10 {
            minutosTexto = "0" + String(minutos)
        } else {
            minutosTexto = String(minutos)
        }
        let horaTexto = "\(calendario.component(.hour, from: fecha)):\(minutosTexto)"
        
        lblHoraAsistencia.text = horaTexto
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 

    
}
