//
//  StorageManager.swift
//  ServicemanApp
//
//  Created by Aleksandr on 10.11.2022.
//

import Foundation
import CoreData

class StorageManager {
    static let shared = StorageManager()
    
    // MARK: - Core Data stack
    private let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CoreDataDemo")
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    private let viewContext: NSManagedObjectContext
    
    private init() {
        viewContext = persistentContainer.viewContext
    }
    
    // MARK: - CRUD
    func fetchData(completion: (Result<[Order], Error>) -> Void) {
        let fetchRequest = Order.fetchRequest()

        do {
            let tasks = try self.viewContext.fetch(fetchRequest)
            completion(.success(tasks))
        } catch let error {
            completion(.failure(error))
        }
    }

    func create(
        address: String?,
        phone: String?,
        task: String?,
        date: Date,
        cost: Int?,
        stuff: String?,
        stuffCost: Int?,
        comment: String?,
        owner: String?,
        percentOwner: Int?,
        completion: (Order) -> Void
    ) {
        let order = Order(context: viewContext)
        order.address = address
        order.phone = phone
        order.task = task
        order.date = date
        order.cost = Int64(cost ?? 0)
        order.stuff = stuff
        order.stuffCost = Int64(stuffCost ?? 0)
        order.comment = comment
        order.owner = owner
        order.percentOwner = Int64(percentOwner ?? 50)
        
        
        completion(order)
        saveContext()
    }

//    func update(_ task: Task, newName: String) {
//        task.title = newName
//        saveContext()
//    }
//
//    func delete(_ task: Task) {
//        viewContext.delete(task)
//        saveContext()
//    }

    // MARK: - Core Data Saving support
    func saveContext() {
        if viewContext.hasChanges {
            do {
                try viewContext.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
