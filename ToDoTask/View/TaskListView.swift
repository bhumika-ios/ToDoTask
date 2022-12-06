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
struct AddTaskView1: View {
    @State var showCreateTaskView = false
    @State private var animate: Bool = false
    private let green = Color("Green")
    
    private let secondaryAccentColor = Color("SecondColor")
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(
                    action: {
                        showCreateTaskView = true
                    }, label: {
                        Text("+")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.white)
                            .padding()
                    })
                .background(animate ? green : secondaryAccentColor)
                .cornerRadius(40)
                .padding()
                .padding(.horizontal, animate ? 30 : 30)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -1 : .zero)
                .sheet(isPresented: $showCreateTaskView) {
                    CreateTask()
                }
            }
            .padding(.bottom)
        }
        .onAppear(perform: addAnimation)
    }
    private func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                self.animate.toggle()
            }
        })
    }
}
