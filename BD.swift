//
//  BD.swift
//  project3
//
//  Created by Fatima Millanes on 24/05/23.
//  Copyright © 2023 Alumno. All rights reserved.
//

import UIKit
import CoreData

class DataBaseConnection {
    static let shared = DataBaseConnection() // Singleton para acceder a la instancia compartida
    
    private lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "project3") // Nombre del archivo .xcdatamodeld
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                fatalError("Error al cargar el almacén persistente: \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    private init() {
        // Inicialización privada para evitar instancias múltiples
    }
    
    // Contexto de Core Data
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    // Guardar cambios en el contexto
    func saveContext() {
        if viewContext.hasChanges {
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Error al guardar el contexto de Core Data: \(nsError), \(nsError.userInfo)")
            }
        }
    }
}
