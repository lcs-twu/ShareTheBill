//
//  Result.swift
//  ShareTheBill
//
//  Created by Russell Gordon on 2023-02-02.
//

import Foundation

struct Result: Identifiable {
    
    let id = UUID()
    let billAmount: String
    let percentage: String
    let totalWithTip: String
    let peopleCount: String
    let amountPerPerson: String
    
}

var exampleResultForPreviews = Result(billAmount: "100.00",
                                      percentage: "20",
                                      totalWithTip: "120.00",
                                      peopleCount: "2",
                                      amountPerPerson: "60.00")
var firstResultForPreviews = Result(billAmount: "200.00", percentage: "15", totalWithTip: "230.00", peopleCount: "4", amountPerPerson: "57.5")

var historyForPreviews = [exampleResultForPreviews, firstResultForPreviews]
