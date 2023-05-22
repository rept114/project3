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
    var capitulos: [Capitulo] = []
    var descripciones: [Descripcion] = []
    @IBOutlet weak var TvHoraAsistencia: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        descripciones.append(Descripcion(descripcion: "Yuji Itadori decide pasar el tiempo con el Club de Ocultismo del instituto, pese a poseer unas habilidades atléticas extraordinarias. Con el tiempo, descubre que el mundo del oculto es real, y los miembros del club son atacados. Mientras, el misterioso Megumi Fushiguro está buscando un objeto maldito, y su búsqueda le lleva hasta Itadori…."))
        
        capitulos.append(Capitulo(imagen: "", episodio: "Temporada: 1", duracion: "Episodios: 24"))
        
        dias.append(Dia(dia: "Lunes"))
        dias.append(Dia(dia: "Martes"))
        dias.append(Dia(dia: "Miercoles"))
        dias.append(Dia(dia: "Jueves"))
        dias.append(Dia(dia: "Viernes"))
        dias.append(Dia(dia: "Sabado"))
        dias.append(Dia(dia: "Domingo"))

        dias[0].asistencias.append(Asistencia(clase: "Programación", salon: "D5", hora: "7:00 am"))
        dias[0].asistencias.append(Asistencia(clase: "Programación", salon: "D5", hora: "7:00 am"))
        dias[1].asistencias.append(Asistencia(clase: "Estructura de Datos", salon: "E3", hora: "7:00 am"))
        dias[1].asistencias.append(Asistencia(clase: "Diseño", salon: "E5", hora: "7:00 am"))
        dias[2].asistencias.append(Asistencia(clase: "Programación", salon: "D5", hora: "7:00 am"))
        dias[2].asistencias.append(Asistencia(clase: "Topicos de fisica", salon: "G18", hora: "7:00 am"))
        dias[3].asistencias.append(Asistencia(clase: "Programación", salon: "D5", hora: "7:00 am"))
        dias[3].asistencias.append(Asistencia(clase: "Introducción a la carrera", salon: "D5", hora: "7:00 am"))
        dias[4].asistencias.append(Asistencia(clase: "Programación", salon: "D5", hora: "7:00 am"))
        dias[4].asistencias.append(Asistencia(clase: "Dispositivos Móviles", salon: "D5", hora: "7:00 am"))
        dias[5].asistencias.append(Asistencia(clase: "Programación", salon: "D5", hora: "7:00 am"))
        dias[5].asistencias.append(Asistencia(clase: "Programación Aeronautica", salon: "D5", hora: "7:00 am"))
        dias[6].asistencias.append(Asistencia(clase: "Programación", salon: "D5", hora: "7:00 am"))
        dias[6].asistencias.append(Asistencia(clase: "Programación", salon: "D5", hora: "7:00 am"))
        
        
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
        destino.asistencias = dias[TvHoraAsistencia.indexPathForSelectedRow!.row].asistencias
    }
}

