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
                    TextField("Enter status of task", text: $taskStatus)
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
