//
//  CreateTask.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import SwiftUI

struct CreateTask: View {
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
