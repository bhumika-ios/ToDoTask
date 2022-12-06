//
//  ReminderView.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import SwiftUI

struct ReminderView: View {
    //define picker objject
   // @Binding var selectedPicker:
    var body: some View {
        VStack{
            Picker("Notification Trigger"){
                Text("Interval")
                Text("Date")
            }
        }
    }
}

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderView()
    }
}
