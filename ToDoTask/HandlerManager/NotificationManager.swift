//
//  NotificationManager.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import Foundation
import UserNotifications
// enum define object time and calendar
enum NotificationManagerConstants {
    static let timeBaseNotification = "TimeBaseNotification"
    static let calendarBaseNotification = "CalendarBaseNotification"
}

class NotificationManager: ObservableObject {
    // define object notificationmanager
    static let shared = NotificationManager()
    @Published var settings: UNNotificationSettings?
    // authorize notification call
    func requestAuthorization(completion: @escaping (Bool) -> Void) {
        UNUserNotificationCenter.current()
            .requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
                self.fetchNotificationSettings()
                completion(granted)
            }
    }
    //fetch setting for authentication
    func fetchNotificationSettings(){
        //
        UNUserNotificationCenter.current().getNotificationSettings{ settings in
        //
            DispatchQueue.main.async {
                self.settings = settings
            }
        }
    }
//    // remove notification
//    func removeScheduledNotification(task: TaskModel) {
//      UNUserNotificationCenter.current()
//        .removePendingNotificationRequests(withIdentifiers: [task.id])
//    }
    //fetch data on create textfield
    func scheduleNotification(task: TaskModel) {
        let content = UNMutableNotificationContent()
        content.title = task.name
          content.body = task.status
          content.sound = UNNotificationSound.default
      
        let taskData = try? JSONEncoder().encode(task)
        if let taskData = taskData {
          content.userInfo = ["Task": taskData]
    }
}
