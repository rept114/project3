//
//  ContactoEmergenciaController.swift
//  project3
//
//  Created by Alumno ULSA on 07/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit


class ContactoEmergenciaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContactosEmergencia") as! CeldaContactoEmergenciaController
        celda.lblNombre.text = contactos[indexPath.row].nombre
        celda.lblTCasa.text = contactos[indexPath.row].TCasa
        celda.lblTPersonal.text = contactos[indexPath.row].TPersonal
        celda.lblParentesco.text = contactos[indexPath.row].parentesco
        return celda
    }
    

    @IBOutlet weak var TvContactos: UITableView!
    var contactos: [Contactos] = []
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
        return 175
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editarContacto" {
        let destino = segue.destination as! EditarController
        destino.callbackActualizar = EditarContacto
        destino.contactos = contactos[TvContactos.indexPathForSelectedRow!.row]
        }
    }
    func EditarContacto (contactos:Contactos) {
        TvContactos.reloadData()
    }

        }

    

