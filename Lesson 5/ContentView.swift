//
//  ContentView.swift
//  Lesson 5
//
//  Created by Андрей Баитов on 22.04.21.
//

import SwiftUI

struct ContentView: View {
    
  @State  var playerCard = "card5"
    @State var cpuCard = "card9"
   @State var playerScore = 0
  @State  var cpuScore = 0
    
    var body: some View {
        ZStack(){
            Image("background")
            
        VStack{
            Spacer()
        Image("logo")
            Spacer()
            HStack(){
                Image(playerCard).padding()
                Image(cpuCard).padding()

            
            }
            Spacer()
            Button(action: {
                
                let playerRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                
                playerCard = "card"+String(playerRand)
                cpuCard = "card"+String(cpuRand)
                
                if (playerRand > cpuRand){
                    playerScore+=1
                }else if cpuRand > playerRand{ 
                    cpuScore+=1
                }
                
                
            }, label: {
                Image("dealbutton")
            })
            
            Spacer()
            
            HStack(){
                Spacer()
                VStack(){
                    Text("Player")
                        .font(.title2)
                        .padding()
                    Text(String(playerScore))
                        .font(.largeTitle)
                }
                Spacer()
                VStack(){
                    Text("CPU")
                        .font(.title2)
                        .padding()
                    Text(String(cpuScore))
                        .font(.largeTitle)
                    
                }
                Spacer()
                
            }.foregroundColor(.white)
            Spacer()
        }}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
