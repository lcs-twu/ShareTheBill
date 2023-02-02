//
//  ShareTheBillApp.swift
//  ShareTheBill
//
//  Created by Russell Gordon on 2023-02-02.
//

import SwiftUI

@main
struct ShareTheBillApp: App {
    
    //where the data is created
    @State var history: [Result] = []
    
    var body: some Scene {
        WindowGroup {
            TabView{
                CalculationView(history: $history)
                    .tabItem{
                        Text("calculate")
                    }
                    .tabItem{
                        Text("Reviews")
                    }
                historyView(history: $history)
            }
        }
    }
}
