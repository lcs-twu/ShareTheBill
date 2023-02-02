//
//  CalculationView.swift
//  ShareTheBill
//
//  Created by Russell Gordon on 2023-02-02.
//

import SwiftUI

struct CalculationView: View {
    
    // MARK: Stored properties
    
    // MARK: Computed properties
    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack {
                Text("Bill Amount")
                    .font(.headline.smallCaps())
                
                Spacer()
            }
            .padding(.horizontal)

            HStack(spacing: 0) {
                Text("$")
                
                TextField("0.00", text: .constant(""))
            }
            .padding()
            
            Spacer()
        }
        .padding(.top, 10)
        .navigationTitle("Share the Bill")
    }
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CalculationView()
        }
    }
}
