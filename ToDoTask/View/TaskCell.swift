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
                if task.completed {
                    VStack(alignment: .leading){
                        
                        Text(task.name)
                            .font(.system(size: 18))
                            .strikethrough()
                            .foregroundColor(.pink)
                        
                        Text(task.status)
                            .font(.system(size: 14))
                            .strikethrough()
                            .foregroundColor(.pink)
                            .padding(.vertical,-5)
                    }
                } else {
                        HStack{
                            VStack(alignment:.leading){
                                Text(task.name)
                                    .font(.system(size: 18))
                                //.foregroundColor(.pink)
                                
                                Text(task.status)
                                    .font(.system(size: 14))
                                // .foregroundColor(.pink)
                            }
                            Spacer()
                            Text(task.reminder.date ?? Date(), style: .date)
                                .font(.system(size: 14))
                            
                        
                    }
                }
            }
        }
    }
}

