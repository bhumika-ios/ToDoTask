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
    //color define
    private let green = Color("Green")
    private let secondAccentColor = Color("SecondColor")
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
                        .background(green)
                        .cornerRadius(10)
                })
                .padding(.horizontal, animate ? 30 : 50)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -10 : .zero)
                .shadow(color: animate ? green.opacity(0.7) : secondAccentColor.opacity(0.7), radius: animate ? 30 : 10, x : 0, y: animate ? 50 : 30)
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
