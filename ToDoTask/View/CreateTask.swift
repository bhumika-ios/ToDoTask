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
                    Text("Add Task")
                        .font(.title)
                        .padding()
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
