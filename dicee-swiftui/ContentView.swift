//
//  ContentView.swift
//  dicee-swiftui
//
//  Created by Raja Shravan on 2023-11-02.
//

import SwiftUI

// Structs are immutable
struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea(edges: .all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    diceView(n:leftDiceNumber)
                    diceView(n:rightDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(.red)
                
            }
            .padding(.bottom)
        }
    }
}

struct diceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .padding()
    }
}

#Preview {
    ContentView()
}


