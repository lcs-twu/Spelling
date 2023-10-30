//
//  QuizView.swift
//  Spelling
//
//  Created by Russell Gordon on 2023-10-30.
//

import SwiftUI

struct QuizView: View {
    
    // MARK: Stored properties
    @State var currentItem = itemsToSpell.randomElement()!
    @State var userGuess = ""
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            Image(currentItem.imageName)
                .resizable()
                .scaledToFit()
            TextField("Enter the name of the item", text: $userGuess)
                .padding(.horizontal)
            
            HStack {
                
                Spacer()
                
                Button(action: { checkGuess()
                       },label: {
                    Text("Submit")
                   })
            }
            .padding()
        }
        
    }
    func checkGuess() {
        if userGuess == currentItem.word{
            print("correct")
        } else {
            print("wrong")
        }
    }
}


#Preview {
    QuizView()
}
