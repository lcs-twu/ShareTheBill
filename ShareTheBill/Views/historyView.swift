//
//  historyView.swift
//  ShareTheBill
//
//  Created by Tom Wu on 2023-02-02.
//

import SwiftUI

struct historyView: View {
    var body: some View {
        //MARK: Stored property
        @Binding var history: [Result] // Begins as empty list
        //MARK: Computed property
        VStack {
            
            Text("History")
                .font(.headline.smallCaps())
                .padding()
            
            List(history.reversed()) { somePriorResult in
                ResultView(priorResult: somePriorResult)
            }

        }
    }
}

struct historyView_Previews: PreviewProvider {
    static var previews: some View {
        historyView(history: @Binding.constant(historyForPreviews))
    }
}
