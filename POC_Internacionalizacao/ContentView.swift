//
//  ContentView.swift
//  POC_Internacionalizacao
//
//  Created by Ian Pacini on 30/04/24.
//

import SwiftUI

struct ContentView: View {
    let playersConnected: Int = 2
    let todayDate: String
    let highScore: String
    
    init() {
        let today = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        let formattedDate = dateFormatter.string(from: today)
        self.todayDate = formattedDate
        
        let playerHighScore = 1234.5678
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let formattedHighScore = numberFormatter.string(from: playerHighScore as NSNumber)
        self.highScore = formattedHighScore ?? "0"
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("flag")
                    .resizable()
                    .frame(width: 80, height: 60)
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("HighScore: \(highScore)")
                        .padding(.bottom, 10)
                    Text(todayDate)
                }
            }
            .padding(.bottom, 40)
            
            HStack {
                Image(systemName: "person.fill")
                Text("\(playersConnected) player.playercount")
            }
            .padding(.bottom, 100)
            
            HStack {
                Text("reward.collect")
                Image(systemName: "trophy")
            }
           
            Spacer()
        }
        .padding(.top, 100)
        .padding(.horizontal, 10)
    }
}

#Preview {
    ContentView()
}
