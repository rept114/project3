//
//  EvaluacionDocenteController.swift
//  project3
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit
class EvaluacionDocenteController: UIViewController {
    @IBOutlet weak var txtComentario: UITextField!
    @IBOutlet weak var rate1: UIImageView!
    @IBOutlet weak var rate2: UIImageView!
    @IBOutlet weak var rate3: UIImageView!
    @IBOutlet weak var rate4: UIImageView!
    @IBOutlet weak var rate5: UIImageView!
    var callbackActualizar: (() -> Void)?
    var calificacion : String = "0"
    var evaluacion : String = "0"
    var comentario : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if comentario != nil {
            comentario = txtComentario.text!
        }

        if evaluacion == "1" {
            rate1.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate2.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate3.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            evaluacion = calificacion
        }
        
        if evaluacion == "2" {
            rate1.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate2.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate3.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            evaluacion = calificacion
        }
        
        if evaluacion == "3" {
            rate1.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate2.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate3.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            evaluacion = calificacion
        }
        
        if evaluacion == "4" {
            rate1.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate2.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate3.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate4.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            evaluacion = calificacion
        }
        
        if evaluacion == "5" {
            rate1.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate2.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate3.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate4.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            rate5.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
            evaluacion = calificacion
        }
        
        }

    @IBAction func doTapStar(_ sender: Any) {
        rate1.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate2.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate3.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        calificacion = "1"
    }
    @IBAction func doTapStar2(_ sender: Any) {
        rate1.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate2.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate3.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        calificacion = "2"
    }
    @IBAction func doTapStar3(_ sender: Any) {
        rate1.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate2.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate3.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        calificacion = "3"
    }
    @IBAction func doTapStar4(_ sender: Any) {
        rate1.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate2.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate3.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate4.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        calificacion = "4"
    }
    @IBAction func doTapStar5(_ sender: Any) {
        rate1.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate2.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate3.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate4.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        rate5.tintColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1)
        calificacion = "5"
    }
    @IBAction func doTapGuardar(_ sender: Any) {
        if callbackActualizar != nil {
            txtComentario.text = comentario
            evaluacion = calificacion
            callbackActualizar!()
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
