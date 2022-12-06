//
//  TaskListView.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var navigationManager = TaskManager.shared
    @State var showNotification = false

    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    Text("Todo Task 📝")
                      .font(.title)
                    Spacer()
                }
            }
        
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
