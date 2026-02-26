//
//  ContentView.swift
//  DiceRoller
//
//  Created by Hana Osman on 2/24/26.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
            

                
                ForEach(1...numberOfDice, id: \.description){ _ in
                    DiceView()
                }
    
            }
            .padding()
        
        HStack{
            Button("Remove Dice"){
                numberOfDice-=1
            }
            Button("Add Dice"){
                numberOfDice+=1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
