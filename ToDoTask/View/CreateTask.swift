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
    var body: some View {
        Form{
            Section{
                HStack{
                    Spacer()
                    Text("Add Task")
                        .font(.title)
                        .padding()
                    Spacer()
                    Button("Save") {
                        
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
                    
                }
            }
        }
    }
}

struct CreateTask_Previews: PreviewProvider {
    static var previews: some View {
        CreateTask()
    }
}
