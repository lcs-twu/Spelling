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
    @State var currentOutcome: Outcome = .undertermined
    @State var history: [Result] = []
    @State var selectedOutcomeFilter: Outcome = .undertermined
    // MARK: Computed properties
    var body: some View {
        
        HStack {
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
                        newWord()
                    }, label: {
                        Text("New word")
                    })
                    
                    Button(action: { 
                        checkGuess()},label: {
                        Text("Submit")
                       })
                }
                .padding()
            }
            VStack {
                
                Picker("Filtering on", selection: $selectedOutcomeFilter){
                    //what shows in UI and what goes in property
                    Text("All results").tag(Outcome.undertermined)
                    Text("Correct").tag(Outcome.correct)
                    Text("Incorrect").tag(Outcome.incorrect)
                }
                .padding()
                
                List(
                    filtering(
                        originalList: history,
                        on: selectedOutcomeFilter
                    )
                ){ currentResult in
                    HStack{
                        Image(
                            currentResult.item.imageName
                        )
                        .resizable()
                        .scaledToFit()
                        .frame(
                            width: 50
                        )
                        
                        Text(
                            currentResult.guessProvided
                        )
                        
                        Spacer()
                        Text(
                            currentResult.outcome.rawValue
                        )
                    }}
            }
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
    
    func newWord() {
        //add current result to the history
        history.insert(
            Result(
                item: currentItem,
                guessProvided: userGuess,
                outcome: currentOutcome
            ),
            at: 0
        )
        print(history)
        //reset quiz page
        currentItem = itemsToSpell.randomElement()!
        userGuess = ""
        currentOutcome = .undertermined
    }
}


#Preview {
    QuizView()
}
