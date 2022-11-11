//
//  EditarController.swift
//  project3
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class EditarController: UIViewController {
    var contactos: Contactos?
    var texto: String?
    var texto2: String?
    var callbackActualizar: ((Contactos) -> Void)?
     @IBOutlet weak var txtNombre: UITextField!
     @IBOutlet weak var txtParentesco: UITextField!
     @IBOutlet weak var txtTCasa: UITextField!
     @IBOutlet weak var txtTPersonal: UITextField!
     
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if contactos != nil {
            txtNombre.text = contactos?.nombre
            txtParentesco.text = contactos?.parentesco
            txtTCasa.text = contactos?.TCasa
            txtTPersonal.text = contactos?.TPersonal
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
     @IBAction func doTapGuardar(_ sender: Any) {
     if callbackActualizar != nil {
         contactos?.nombre = txtNombre.text!
         contactos?.parentesco = txtParentesco.text!
         contactos?.TCasa = txtTCasa.text!
         contactos?.TPersonal = txtTPersonal.text!
         callbackActualizar!(contactos!)
         self.navigationController?.popViewController(animated: true)
     }
     
 }

}
