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
                        Image(systemName: "rectangle.split.2x2.fill")
                        Text("calculate")
                    }
                    .tabItem{
                        Image(systemName: "clock.fill")
                        Text("Reviews")
                    }
                historyView(history: $history)
            }
        }
    }
}
