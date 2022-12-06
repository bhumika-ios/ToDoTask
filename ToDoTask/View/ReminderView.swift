//
//  ReminderView.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import SwiftUI

struct ReminderView: View {
    //define picker objject
    @Binding var selectedPicker: ReminderType
    // define timeduration object
    @Binding var timeDuration: Int
    //define date object
    @Binding var date: Date
    // defien repeate bool object
    @Binding var onReapeat: Bool
    var body: some View {
        VStack{
            Picker("Notification Trigger", selection: $selectedPicker){
                Text("Interval").tag(ReminderType.time)
                Text("Date").tag(ReminderType.calender)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.vertical)
            if selectedPicker == ReminderType.time{
                Picker("TimeInerval", selection: $timeDuration){
                    ForEach(1 ..< 59) { i in
                        if i == 1 {
                            Text("\(i) minute").tag(i)
                        } else {
                            Text("\(i) minutes").tag(i)
                        }
                    }
                }
            } else if selectedPicker == ReminderType.calender {
                DatePicker("Enter Date", selection: $date)
                    
            } else{
                
            }
            Toggle(isOn: $onReapeat){
                Text("Repeat Notification")
            }
        }
    }
}

//struct ReminderView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReminderView()
//    }
//}
