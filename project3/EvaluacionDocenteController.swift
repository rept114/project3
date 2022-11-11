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
    var secuenciaImage1 : [UIImage] = []
    var secuenciaImage2 : [UIImage] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        }

    @IBAction func doTapStar(_ sender: Any) {
        if #available(iOS 13.0, *) {
            UIImage(systemName: "Star.fill")
        } else {
            // Fallback on earlier versions
        }
    }
    @IBAction func doTapStar2(_ sender: Any) {
    }
    @IBAction func doTapStar3(_ sender: Any) {
    }
    @IBAction func doTapStar4(_ sender: Any) {
    }
    @IBAction func doTapStar5(_ sender: Any) {
    }
    @IBAction func doTapGuardar(_ sender: Any) {
    }
    
}
