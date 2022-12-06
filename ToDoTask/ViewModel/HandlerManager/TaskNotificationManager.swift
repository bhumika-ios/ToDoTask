//
//  TaskNotificationManager.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import Foundation

class TaskNotificationManager {
    enum FileConstants {
        static let tasksFileName = "UserDefaults"
    }
    
    func save(tasks: [TaskModel]){
        do{
            let documentsDirectory = getDocumentsDirectory()
            let storageURL = documentsDirectory.appendingPathComponent(FileConstants.tasksFileName)
            let tasksData = try JSONEncoder().encode(tasks)
            do {
              try tasksData.write(to: storageURL)
            } catch {
              print("Couldn't write to File Storage")
            }
          } catch {
            print("Couldn't encode tasks data")
          }
        
    }
    func loadTasks() -> [TaskModel] {
      let documentsDirectory = getDocumentsDirectory()
      let storageURL = documentsDirectory.appendingPathComponent(FileConstants.tasksFileName)
      guard
        let taskData = try? Data(contentsOf: storageURL),
        let tasks = try? JSONDecoder().decode([TaskModel].self, from: taskData)
      else {
        return []
      }

      return tasks
    }
    func getDocumentsDirectory() -> URL {
      let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
      return paths[0]
    }
}
