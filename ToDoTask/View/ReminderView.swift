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
                    
                }
            }
        }
    }
}

//struct ReminderView_Previews: PreviewProvider {
//    static var previews: some View {
//        ReminderView()
//    }
//}
