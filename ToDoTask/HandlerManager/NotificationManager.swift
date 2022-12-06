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
    // authorize notification call
    func requestAuthorization(completion: @escaping (Bool) -> Void) {
        UNUserNotificationCenter.current()
            .requestAuthorization(options: [.alert, .sound, .badge]) { greanted, _ in
                
            }
    }
}
