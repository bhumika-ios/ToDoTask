//
//  HomeView.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("There are no Task!")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.semibold)
                    
                Text("Are you a productive person? I think you should click the add button and add a bunch of data to your todo Task!")
                    .font(.system(.headline))
                    .padding(.bottom, 20)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
