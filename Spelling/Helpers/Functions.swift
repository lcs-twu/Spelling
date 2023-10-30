//
//  Functions.swift
//  Spelling
//
//  Created by Tom Wu on 2023-10-30.
//

import Foundation

//inputs:
//-original list
//-what outcome does the user want included
//outputs:
//-the filtered list
func filtering(originalList: [Result], on desiredOutcome: Outcome) -> [Result] {
    //when the desiredOutsome is undetermind, just stop and return the original list
    if desiredOutcome == .undertermined{
        return originalList
    }

    //create an empty list to populate before returning
    var filteredResults: [Result] = []
    
    //iterate over the entire original list
    for result in originalList {
        //copy any results that match desiredOutcome to the new list
        if result.outcome == desiredOutcome {
            filteredResults.append(result)
        }
    }
    //only return the filtered list
    return filteredResults
}
