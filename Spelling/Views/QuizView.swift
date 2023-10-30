//
//  QuizView.swift
//  Spelling
//
//  Created by Russell Gordon on 2023-10-30.
//

import SwiftUI

enum Outcome: String {
    case undertermined = " "
    case correct = "✅"
    case incorrect = "❎"
}

struct QuizView: View {
    
    // MARK: Stored properties
    @State var currentItem = itemsToSpell.randomElement()!
    @State var userGuess = ""
    @State var currentOutcome: Outcome = .undertermined
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            Image(currentItem.imageName)
                .resizable()
                .scaledToFit()
            
            HStack {
                TextField("Enter the name of the item", text: $userGuess)
                    .padding(.horizontal)
                
                Text(currentOutcome.rawValue)
            }
            .padding(.horizontal)
            
            HStack {
                
                Spacer()
                
                Button(action: { 
                    checkGuess()},label: {
                    Text("Submit")
                   })
            }
            .padding()
        }
        
    }
    func checkGuess() {
        if userGuess == currentItem.word{
            print("correct")
            currentOutcome = .correct
        } else {
            print("wrong")
            currentOutcome = .incorrect
        }
    }
}


#Preview {
    QuizView()
}
