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
                    Button(
                      action: {
                        // 1
                        NotificationManager.shared.requestAuthorization { granted in
                          // 2
                          if granted {
                            showNotification = true
                          }
                        }
                      },
                      label: {
                        Image(systemName: "bell")
                          .font(.title)
                          .accentColor(Color("Green"))
                      })
                    .padding(.trailing)
                }
                .padding()
            }
        
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
