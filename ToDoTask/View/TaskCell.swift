//
//  TaskCell.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import SwiftUI

struct TaskCell: View {
    var task: TaskModel

    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    TaskManager.shared.markTaskComplete(task: task)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        TaskManager.shared.remove(task: task)
                    }
                }, label: {
                    Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .accentColor(task.completed ? .red : .green)
                })
            }
        }
    }
}

