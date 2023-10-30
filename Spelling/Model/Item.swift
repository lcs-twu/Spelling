//
//  Item.swift
//  Spelling
//
//  Created by Russell Gordon on 2023-10-30.
//

import Foundation
//stored what happed in a single round of one game
struct Result: Identifiable {
    let id = UUID()
    //random
    let item: Item
    //what the player guesed
    let guessProvided: String
    //correct or not
    let outcome: Outcome
}

struct Item: Identifiable {
    
    let id = UUID()
    let word: String
    let imageName: String
    
}

// Create the list of items that can be spelled
let itemsToSpell = [
    
    Item(word: "watermelon",
         imageName: "watermelon"),
    
    Item(word: "waffles",
         imageName: "waffles"),
    
    Item(word: "turkey",
         imageName: "turkey"),
    
    Item(word: "tomato",
         imageName: "tomato"),
    
    Item(word: "strawberry",
         imageName: "strawberry"),
    
    Item(word: "steak",
         imageName: "steak"),
    
    Item(word: "soup",
         imageName: "soup"),
    
    Item(word: "soda",
         imageName: "soda"),
    
    Item(word: "sandwich",
         imageName: "sandwich"),
    
    Item(word: "pumpkin",
         imageName: "pumpkin"),
    
    Item(word: "potato",
         imageName: "potato"),
    
    Item(word: "pizza",
         imageName: "pizza"),
    
    Item(word: "pineapple",
         imageName: "pineapple"),
    
    Item(word: "pear",
         imageName: "pear"),
    
    Item(word: "peas",
         imageName: "peas"),
    
    Item(word: "pancakes",
         imageName: "pancakes"),
    
    Item(word: "orange",
         imageName: "orange"),
    
    Item(word: "onion rings",
         imageName: "onion-rings"),
    
    Item(word: "onion",
         imageName: "onion"),
    
    Item(word: "mushroom",
         imageName: "mushroom"),
    
    Item(word: "milkshake",
         imageName: "milkshake"),
    
    Item(word: "lemon",
         imageName: "lemon"),
    
    Item(word: "green pepper",
         imageName: "green-pepper"),
    
    Item(word: "grapes",
         imageName: "grapes"),
    
    Item(word: "eggplant",
         imageName: "eggplant"),
    
    Item(word: "french fries",
         imageName: "french-fries"),
    
    Item(word: "eggs",
         imageName: "eggs"),
    
    Item(word: "cucumber",
         imageName: "cucumber"),
    
    Item(word: "corn",
         imageName: "corn"),
    
    Item(word: "cherry",
         imageName: "cherry"),
    
    Item(word: "celery",
         imageName: "celery"),
    
    Item(word: "carrot",
         imageName: "carrot"),
    
    Item(word: "hamburger",
         imageName: "hamburger"),
    
    Item(word: "banana",
         imageName: "banana"),
    
    Item(word: "apple",
         imageName: "apple"),
    
]
