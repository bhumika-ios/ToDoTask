//
//  CreateTask.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import SwiftUI

struct CreateTask: View {
    // define textfield text name
    @State var taskName: String = ""
    @State var taskStatus: String = ""
    //define boolean value for toggle field
    @State var reminderEnabled = false
    //binding value define state value
    @State var selectedPicker = ReminderType.time
    @State var timeDuration: Int = 0
    @State private var date = Date()
    @State private var onReapet = false
    
    @Environment(\.presentationMode) var presentationMode
    let picker = ["Time", "Calendar"]
    let timeDurations: [Int] = Array(1...59)
    var body: some View {
        NavigationView{
            Form{
                Section{
                    HStack{
                        Spacer()
                        Text("Add Task")
                            .font(.title)
                            .padding()
                        Spacer()
                        Button("Save") {
                            TaskManager.shared.addNewTask(taskName, taskStatus,makeReminder())
                        }
                        .padding()
                    }
                    VStack{
                        TextField("Enter name of task", text: $taskName)
                            .padding(.vertical)
                        TextField("Enter status of task", text: $taskStatus)
                            .padding(.vertical)
                        Toggle(isOn: $reminderEnabled){
                            Text("Add Reminder")
                        }
                        .padding(.vertical)
                        if reminderEnabled{
                            ReminderView(selectedPicker: $selectedPicker, timeDuration: $timeDuration, date: $date, onReapeat: $onReapet)
                            }
                    }
                }
            }
        }
    }
    func makeReminder() -> Reminder? {
      guard reminderEnabled else {
        return nil
      }
      var reminder = Reminder()
      reminder.reminderType = selectedPicker
      switch selectedPicker {
      case .time:
          reminder.timeInterval = TimeInterval(timeDurations[timeDuration] * 60)
      case .calendar:
        reminder.date = date
      }
      reminder.repeats = onReapet
      return reminder
    }
}

struct CreateTask_Previews: PreviewProvider {
    static var previews: some View {
        CreateTask()
    }
}
