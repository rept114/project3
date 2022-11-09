//
//  Cafeteria.swift
//  project3
//
//  Created by Alumno ULSA on 09/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation
import UIKit

class CafeteriaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var menus: [Menu] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menus.append(Menu(producto: "Oreos", precio: "$15"))
        menus.append(Menu(producto: "Emperador", precio: "$18"))
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCafeteria") as! CeldaCafeteriaMenuController
        celda.lblProducto.text = menus[indexPath.row].producto
        celda.lblPrecio.text = menus[indexPath.row].precio
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

    
}

