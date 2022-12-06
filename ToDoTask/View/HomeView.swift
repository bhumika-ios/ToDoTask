//
//  HomeView.swift
//  ToDoTask
//
//  Created by Bhumika Patel on 06/12/22.
//

import SwiftUI

struct HomeView: View {
    //MARK: animation define
    @State private var animate: Bool = false
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
                
                Button(
                action: {
                    
                }, label: {
                    Text("Add Something 🥳")
                        .font(.system(.headline))
                        .foregroundColor(.black)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color("Green"))
                        .cornerRadius(10)
                })
                .padding(.horizontal, animate ? 30 : 50)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            
        }
    }
    //MARK: Animation method
    private func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ){
                self.animate.toggle()
            }
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
