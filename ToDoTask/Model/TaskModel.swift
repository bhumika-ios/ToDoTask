//
//  TaskModel.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import Foundation

struct TaskModel: Identifiable, Codable{
    var id = UUID().uuidString
    var name: String
    var status: String
    var completed = false
    var reminderEnabled = false
    var reminder: Reminder
    
}
enum ReminderType: Int, CaseIterable ,Identifiable, Codable{
    case time
    case calender
    var id: Int { self.rawValue}
}
struct Reminder: Codable {
    var timeInterval: TimeInterval?
    var date: Date?
    var reminderType: ReminderType
    var repeats = false
    
}
